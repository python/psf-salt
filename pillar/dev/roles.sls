# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server:
    pattern: "backup-server.vagrant.psf.io"
    purpose: ""
    contact: ""
  bugs:
    pattern: "bugs.vagrant.psf.io"
    purpose: ""
    contact: ""
  buildbot:
    pattern: "buildbot.vagrant.psf.io"
    purpose: ""
    contact: ""
  cdn-logs:
    pattern: "cdn-logs.vagrant.psf.io"
    purpose: ""
    contact: ""
  codespeed:
    pattern: "codespeed.vagrant.psf.io"
    purpose: ""
    contact: ""
  consul:
    pattern: "E@(consul|salt-master).vagrant.psf.io"
    purpose: ""
    contact: ""
  docs:
    pattern: "docs.vagrant.psf.io"
    purpose: "Builds and serves CPython's documentation"
    contact: "mdk"
  downloads:
    pattern: "downloads.vagrant.psf.io"
    purpose: ""
    contact: ""
  hg:
    pattern: "hg.vagrant.psf.io"
    purpose: ""
    contact: ""
  loadbalancer:
    pattern: "loadbalancer.vagrant.psf.io"
    purpose: ""
    contact: ""
  mail:
    pattern: "mail.vagrant.psf.io"
    purpose: ""
    contact: ""
  postgresql:
    pattern: "postgresql-*.vagrant.psf.io"
    purpose: ""
    contact: ""
  postgresql-primary:
    pattern: "postgresql-primary.vagrant.psf.io"
    purpose: ""
    contact: ""
  postgresql-replica:
    pattern: "postgresql-replica.vagrant.psf.io"
    purpose: ""
    contact: ""
  planet:
    pattern: "planet.vagrant.psf.io"
    purpose: ""
    contact: ""
  pypy-web:
    pattern: "pypy-web.vagrant.psf.io"
    purpose: ""
    contact: ""
  pythontest:
    pattern: "pythontest.vagrant.psf.io"
    purpose: ""
    contact: ""
  salt-master:
    pattern: "salt-master.vagrant.psf.io"
    purpose: ""
    contact: ""
  salt-master-vagrant:
    pattern: "salt-master.vagrant.psf.io"
    purpose: ""
    contact: ""
  moin:
    pattern: "moin.vagrant.psf.io"
    purpose: ""
    contact: ""

  web-pypa:
    pattern: "web-pypa.vagrant.psf.io"
    purpose: ""
    contact: ""
