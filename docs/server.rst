Server Guide
============


Bootstrap a Server
------------------

Unless otherwise required all machines operated by the PSF Salt infrastructure
should be running Ubuntu 14.04 and they will have their configuration managed by
psf-salt. Each machine should be given a hostname which matches the pattern
``serviceN.dc.psf.io`` where ``serviceN`` is replaced by a service name (such as
``pg``) and a unique number, and ``dc`` is replaced by the `PSF DC identifier
<http://infra.psf.io/overview/#datacenters>`_ for the DC that this machine is
in. A full example would be ``pg0.iad1.psf.io``. You'll need to add this
hostname to ``pillar/prod/roles.sls`` and ``pillar/dev/roles.sls`` to put the
machine in the correct configuration nodegroup.

Once you have a machine, you can bootstrap it by simply executing
``inv salt.bootstrap <public address>``. This will SSH into the machine,
install all the required software, register it with the salt master and run
highstate on it. Within 15 minutes the salt master will also setup the DNS
for the machine and it will live at the hostname that you have given it at
the psf.io domain.
