from __future__ import absolute_import, division, print_function

import os

import invoke
import fabric.api
import fabric.contrib.files

from .utils import cd, ssh_host


SALT_MASTER = "192.168.5.1"


@invoke.task
def bootstrap(host):
    # If the host does not have a . in it's address, then we'll assume it's the
    # short for of host.psf.io and add the .psf.io onto it.
    if "." not in host:
        host += ".psf.io"

    # SSH into the root user of this server and bootstrap the server.
    with ssh_host("root@" + host):
        # Make sure this host hasn't already been bootstrapped.
        if fabric.contrib.files.exists("/etc/salt/minion.d/local.conf"):
            raise RuntimeError("{} is already bootstrapped.".format(host))

        # Ok, we're going to bootstrap, first we need to add the Salt PPA
        fabric.api.run("apt-add-repository -y ppa:saltstack/salt")

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
        fabric.api.run("apt-get install -qy salt-minion python-apt")

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

    # SSH into our salt master and accept the key for this server.
    with ssh_host("salt-master.psf.io"):
        fabric.api.sudo("salt-key -ya {}".format(host))

    # Finally SSH into our server one more time to run salt-call
    # state.highstate for real this time.
    with ssh_host("root@" + host):
        fabric.api.run("salt-call state.highstate")


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
    with ssh_host("salt-master.psf.io"):
        with fabric.api.cd("/srv/salt"):
            fabric.api.sudo("git pull --ff-only origin master")

        with fabric.api.cd("/srv/pillar/prod/secrets"):
            fabric.api.sudo("git pull --ff-only origin master")


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
