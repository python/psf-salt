from __future__ import absolute_import, division, print_function

import invoke
import fabric.api as fabric

from .utils import cd, ssh_host


@invoke.task(name="sync-changes")
def sync_changes():
    # Push our changes to GitHub
    # TODO: Determine what origin to use?
    invoke.run("git push origin master", echo=True)

    # SSH into the salt master and pull our changes from GitHub
    with ssh_host("salt-master.psf.io"), fabric.cd("/srv/salt"):
        fabric.sudo("git pull --ff-only origin master")

    with cd("pillar/secrets"):
        # Push our changes into the secret repository
        invoke.run("git push origin master", echo=True)


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
            fabric.sudo("salt-call state.highstate")
