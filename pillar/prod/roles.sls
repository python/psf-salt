# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "backup.sfo1.psf.io"
  bugs: "bugs.ams1.psf.io"
  cdn-logs: "cdn-logs.nyc1.psf.io"
  codespeed: "codespeed*.nyc1.psf.io"
  consul: "consul*.nyc1.psf.io"
  docs: "docs.nyc1.psf.io"
  downloads: "downloads.nyc1.psf.io"
  hg: "hg.nyc1.psf.io"
  linehaul: "linehaul.nyc1.psf.io"
  loadbalancer: "lb*.nyc1.psf.io"
  mail: "mail.ams1.psf.io"
  planet: "planet.nyc1.psf.io"
  pypy-web: "pypy-web.nyc1.psf.io"
  pythontest: "pythontest.nyc3.psf.io"
  salt-master: "salt.nyc1.psf.io"
  slack: "slack.nyc1.psf.io"

  # Misc PyPA
  web-pypa: "web*.pypa.nyc1.psf.io"
