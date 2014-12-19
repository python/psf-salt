from __future__ import absolute_import, division, print_function

import os

import invoke
import fabric.api
import fabric.contrib.files

from .utils import cd, ssh_host


SALT_MASTER = "192.168.5.1"


@invoke.task(name="sync-changes")
def sync_changes():
    # Push our changes to GitHub
    # TODO: Determine what origin to use?
    invoke.run("git push origin master", echo=True)

    if os.path.isdir("pillar/prod/secrets"):
        with cd("pillar/prod/secrets"):
            # Push our changes into the secret repository
            invoke.run("git push origin master", echo=True)

    # SSH into the salt master and pull our changes
    with ssh_host("salt.iad1.psf.io"):
        with fabric.api.cd("/srv/salt"):
            fabric.api.sudo("git pull --ff-only origin master")

        with fabric.api.cd("/srv/pillar/prod/secrets"):
            fabric.api.sudo("git pull --ff-only origin master")


@invoke.task
def bootstrap(host, codename="trusty", pre=[sync_changes]):
    # If the host does not contain '.', we'll assume it's of the form
    # [host].iad1.psf.io.
    if "." not in host:
        host += ".iad1.psf.io"

    # SSH into the root user of this server and bootstrap the server.
    with ssh_host("root@" + host):
        # Make sure this host hasn't already been bootstrapped.
        if fabric.contrib.files.exists("/etc/salt/minion.d/local.conf"):
            raise RuntimeError("{} is already bootstrapped.".format(host))

        # Ok, we're going to bootstrap, first we need to add our packages
        fabric.api.run(
            ("echo 'deb [arch=amd64] https://s3.amazonaws.com/apt.psf.io/psf/ "
             "{} main' > /etc/apt/sources.list.d/psf.list").format(codename)
        )
        fabric.api.put(
            os.path.join(
                os.path.dirname(os.path.abspath(__file__)), "..",
                "salt", "base", "config", "APT-GPG-KEY-PSF",
            ),
            "/tmp/APT-GPG-KEY-PSF",
        )
        fabric.api.run("apt-key add - < /tmp/APT-GPG-KEY-PSF")

        # If we're running precise we need to add a PPA
        if codename == "precise":
            fabric.api.run("add-apt-repository ppa:chris-lea/zeromq -y")

        # Then we need to update our local apt
        fabric.api.run("apt-get update -qy")

        # Then, upgrade all of the packages that are currently on this
        # machine.
        fabric.api.run("apt-get upgrade -qy")
        fabric.api.run("apt-get dist-upgrade -qy")

        # Reboot the server to make sure any upgrades have been loaded.
        fabric.api.reboot()

        # Install salt-minion and python-apt so we can manage things with
        # salt.
        fabric.api.run("apt-get install -qy salt")

        # Drop the /etc/salt/minion.d/local.conf onto the server so that it
        # can connect with our salt master.
        fabric.contrib.files.upload_template(
            "conf/minion.conf",
            "/etc/salt/minion.d/local.conf",
            context={
                "master": SALT_MASTER,
            },
            use_jinja=True,
            mode=0o0644,
        )

        # Run salt-call state.highstate, this will fail the first time because
        # the Master hasn't accepted our key yet.
        fabric.api.run("salt-call state.highstate", warn_only=True)

        # Get the minion ID of this server
        minion_id = fabric.api.run("cat /etc/salt/minion_id")

    # SSH into our salt master and accept the key for this server.
    with ssh_host("salt.iad1.psf.io"):
        fabric.api.sudo("salt-key -ya {}".format(minion_id))

    # Finally SSH into our server one more time to run salt-call
    # state.highstate for real this time.
    with ssh_host("root@" + host):
        fabric.api.run("salt-call state.highstate")


@invoke.task(default=True, pre=[sync_changes])
def highstate(hosts, dc="iad1"):
    # Until invoke supports *args we need to hack around the lack of support
    # for now.
    hosts = [h.strip() for h in hosts.split(",") if h.strip()]

    # Ensure we have some hosts
    if not hosts:
        raise ValueError("Must specify hosts for highstate")

    # Loop over all the hosts and if they do not have a ., then we'll add
    # .psf.io to them.
    hosts = [h if "." in h else h + "." + dc + ".psf.io" for h in hosts]

    # Loop over all the hosts and call salt-call state.highstate on them.
    for host in hosts:
        with ssh_host(host):
            fabric.api.sudo("salt-call state.highstate")
