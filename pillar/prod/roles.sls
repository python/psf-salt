# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "rs-backup.psf.io"
  cdn-logs: "cdn-logs.psf.io"
  docs: "docs-backend.psf.io"
  downloads: "dl-files.psf.io"
  hg: "hg.psf.io"
  jython-web: "jython-web.psf.io"
  loadbalancer: "lb*.psf.io"
  monitoring: "monitoring.psf.io"
  packages: "packages.psf.io"
  planet: "planet.psf.io"
  postgresql: "pg*.psf.io"
  postgresql-primary: "pg0.psf.io"
  postgresql-replica: "pg*.psf.io and not pg0.psf.io"
  salt-master: "salt-master.psf.io"
  tracker: "bugs.psf.io"
  vpn: "vpn.psf.io"
