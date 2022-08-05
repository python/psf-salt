# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server:
    pattern:  "backup*.sfo1.psf.io"
    purpose:  "Automated backup of infrastructure"
    contact:  "Infrastructure staff"
  bugs:
    pattern:  "bugs.ams1.psf.io"
    purpose:  "Roundup hosting for CPython, Jython, and Roundup"
    contact:  "Infrastructure staff"
  buildbot:
    pattern:  "buildbot.nyc1.psf.io"
    purpose:  "Hosting for CPython buildbot server"
    contact:  "zware, haypo, pablogsa"
  cdn-logs:
    pattern:  "cdn-logs.nyc1.psf.io"
    purpose:  "Realtime log streaming from Fastly CDN for debug"
    contact:  "Infrastructure Staff"
  codespeed:
    pattern:  "codespeed*.nyc1.psf.io"
    purpose:  "Hosting for speed.python.org and speed.pypy.org"
    contact:  ""
  consul:
    pattern:  "consul*.nyc1.psf.io"
    purpose:  "Runs `Consul <https://www.consul.io/>`_ discovery service"
    contact:  "Infrastructure Staff"
  docs:
    pattern:  "docs*.nyc1.psf.io"
    purpose:  "Builds and serves CPython's documentation"
    contact:  "mdk"
  downloads:
    pattern:  "downloads*.nyc1.psf.io"
    purpose:  "Serves python.org downloads"
    contact:  "CPython Release Managers"
  hg:
    pattern:  "hg.nyc1.psf.io"
    purpose:  "Version Control Archives, serves hg.python.org and svn.python.org"
    contact:  "Infrastructure Staff"
  loadbalancer:
    pattern:  "lb*.nyc1.psf.io"
    purpose:  "Load balancer"
    contact:  "Infrastructure Staff"
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
    purpose:  "Serves www.pypy.org"
    contact:  "mattip, fijal"
  pythontest:
    pattern:  "pythontest.nyc3.psf.io"
    purpose:  "Test resources for CPython's test suite."
    contact:  "Infrastructure Staff"
  salt-master:
    pattern:  "salt*.nyc1.psf.io"
    purpose:  "Salt server"
    contact:  "Infrastructure Staff"
  moin:
    pattern:  "moin*.nyc1.psf.io"
    purpose:  "Hosts moin sites for wiki.python.org, wiki.jython.org"
    contact:  "lemburg"

  # Misc PyPA
  web-pypa:
    pattern:  "web*.pypa.nyc1.psf.io"
    purpose:  "Python Packaging Authority"
    contact:  "dstufft"
