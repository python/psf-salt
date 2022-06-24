# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server:
    pattern:  "backup.sfo1.psf.io"
    purpose:  "Automated backup of infrastructure"
    contact:  "Infrastructure staff"
  bugs:
    pattern:  "bugs.ams1.psf.io"
    purpose:  ""
    contact:  ""
  buildbot:
    pattern:  "buildbot.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  cdn-logs: 
    pattern:  "cdn-logs.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  codespeed: 
    pattern:  "codespeed*.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  consul: 
    pattern:  "consul*.nyc1.psf.io"
    purpose:  "Runs '<https://www.consul.io/service>' discovery"
    contact:  "dstufft"
  docs:
    pattern:  "docs.nyc1.psf.io"
    purpose:  "Builds and serves CPython's documentation"
    contact:  "benjamin"
  downloads:
    pattern:  "downloads.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  hg:
    pattern:  "hg.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  loadbalancer:
    pattern:  "lb*.nyc1.psf.io"
    purpose:  "Load balancer"
    contact:  "dstufft"
  mail: 
    pattern:  "mail.ams1.psf.io"
    purpose:  "Mail and mailman server"
    contact:  "postmasters"
  planet: 
    pattern:  "planet.nyc1.psf.io"
    purpose:  "Planet Python"
    contact:  "benjamin"
  pypy-web: 
    pattern:  "pypy-web.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  pythontest: 
    pattern:  "pythontest.nyc3.psf.io"
    purpose:  "Test resources for CPython's test suite."
    contact:  benjamin"
  salt-master: 
    pattern:  "salt.nyc1.psf.io"
    purpose:  ""
    contact:  ""
  moin: 
    pattern:  "moin.nyc1.psf.io"
    purpose:  ""
    contact:  ""

  # Misc PyPA
  web-pypa:
    pattern:  "web*.pypa.nyc1.psf.io"
    purpose:  "Python Packaging Authority"
    contact:  "dstufft"
