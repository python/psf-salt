from __future__ import absolute_import, division, print_function

import os

import invoke
import fabric.api
import fabric.contrib.files

from .utils import cd, ssh_host


SALT_MASTER = "192.168.5.1"


@invoke.task
def bootstrap(host, roles=None, fs="ext4", fs_options="", mount_options=None):
    # If the host does not have a . in it's address, then we'll assume it's the
    # short for of host.psf.io and add the .psf.io onto it.
    if "." not in host:
        host += ".psf.io"

    # SSH into the root user of this server and bootstrap the server.
    with ssh_host("root@" + host):
        # Make sure this host hasn't already been bootstrapped.
        if fabric.contrib.files.exists("/etc/salt/minion.d/local.conf"):
            raise RuntimeError("{} is already bootstrapped.".format(host))

        # Locate all the devices and their partitions on this machine.
        results = fabric.api.run("lsblk -l -n -o NAME,TYPE,FSTYPE,MOUNTPOINT")
        devices = {}
        for blk in [x.split() for x in results.splitlines()]:
            if blk[1] == "disk":
                devices.setdefault(blk[0], {})
            elif blk[1] == "part":
                blk_data = devices.setdefault(blk[0][:4], {})
                blk_data[blk[0]] = blk[2:]

        # Figure out which devices are data disks, they'll be the ones that
        # do not have a partition with a Filesystem.
        data_disks = []
        for dev, parts in devices.items():
            has_fs = []
            for part, data in parts.items():
                has_fs.append(True if data else False)

            # All of the partitions on this disk have no data
            if has_fs and all(has_fs):
                continue
            elif has_fs and any(has_fs):
                raise ValueError("Disk %r has some filesystems not all?" % dev)
            elif has_fs:
                data_disks.extend("/dev/" + p for p in parts)
            else:
                assert False, "Cannot handle disks with no partition"

        # Partition and format any data disks which are attached to this system
        assert len(data_disks) in [0, 1], "Cannot handle multiple data disks"
        for disk in data_disks:
            fabric.api.run("mkfs -t {} {} {}".format(fs, disk, fs_options))

        # Ok, we're going to bootstrap, first we need to add the Salt PPA
        fabric.api.run("apt-add-repository -y ppa:saltstack/salt")

        # Then we need to update our local apt
        fabric.api.run("apt-get update -y")

        # Then, upgrade all of the packages that are currently on this
        # machine.
        fabric.api.run("apt-get upgrade -y")
        fabric.api.run("apt-get dist-upgrade -y")

        # Reboot the server to make sure any upgrades have been loaded.
        fabric.api.reboot()

        # Install salt-minion and python-apt so we can manage things with
        # salt.
        fabric.api.run("apt-get install -y salt-minion python-apt")

        # Drop the /etc/salt/minion.d/local.conf onto the server so that it
        # can connect with our salt master.
        fabric.contrib.files.upload_template(
            "conf/minion.conf",
            "/etc/salt/minion.d/local.conf",
            context={
                "master": SALT_MASTER,
                "roles": [r.strip() for r in roles.split(",") if r.strip()],
                "data_disks": [
                    {
                        "mount": "/data",
                        "device": dev,
                        "fs": fs,
                        "opts": mount_options,
                    }
                    for dev in data_disks
                ],
            },
            use_jinja=True,
            mode=0o0644,
        )

        # Run salt-call state.highstate, this will fail the first time because
        # the Master hasn't accepted our key yet.
        fabric.api.run("salt-call state.highstate", warn_only=True)

    # SSH into our salt master and accept the key for this server.
    with ssh_host("salt-master.psf.io"):
        fabric.api.sudo("salt-key -a {}".format(host))

    # Finally SSH into our server one more time to run salt-call
    # state.highstate for real this time.
    with ssh_host("root@" + host):
        fabric.api.run("salt-call state.highstate")


@invoke.task(name="sync-changes")
def sync_changes():
    # Push our changes to GitHub
    # TODO: Determine what origin to use?
    invoke.run("git push origin master", echo=True)

    if os.path.isdir("pillar/secrets"):
        with cd("pillar/secrets"):
            # Push our changes into the secret repository
            invoke.run("git push origin master", echo=True)

    # SSH into the salt master and pull our changes
    with ssh_host("salt-master.psf.io"):
        with fabric.api.cd("/srv/salt"):
            fabric.api.sudo("git pull --ff-only origin master")

        with fabric.api.cd("/srv/pillar/secrets"):
            fabric.api.sudo("git pull --ff-only origin master")


@invoke.task(default=True, pre=[sync_changes])
def highstate(hosts):
    # Until invoke supports *args we need to hack around the lack of support
    # for now.
    hosts = [h.strip() for h in hosts.split(",") if h.strip()]

    # Ensure we have some hosts
    if not hosts:
        raise ValueError("Must specify hosts for highstate")

    # Loop over all the hosts and if they do not have a ., then we'll add
    # .psf.io to them.
    hosts = [h if "." in h else h + ".psf.io" for h in hosts]

    # Loop over all the hosts and call salt-call state.highstate on them.
    for host in hosts:
        with ssh_host(host):
            fabric.api.sudo("salt-call state.highstate")
