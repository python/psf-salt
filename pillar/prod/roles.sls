# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "rs-backup.psf.io"
  cdn-logs: "cdn-logs.psf.io or cdn-logs.iad1.psf.io"
  docs: "docs-backend.psf.io or docs-backend.iad1.psf.io"
  downloads: "dl-files.psf.io or dl-files.iad1.psf.io"
  hg: "hg.psf.io or hg.iad1.psf.io"
  jython-web: "jython-web.psf.io or jython-web.iad1.psf.io"
  loadbalancer: "lb*.psf.io or lb*.iad1.psf.io"
  monitoring: "monitoring.psf.io or monitoring.iad1.psf.io"
  packages: "packages.psf.io or packages.iad1.psf.io"
  planet: "planet.psf.io or planet.iad1.psf.io"
  postgresql: "pg*.psf.io or pg*.iad1.psf.io"
  postgresql-primary: "pg0.psf.io or pg0.iad1.psf.io"
  postgresql-replica: "(pg*.psf.io and not pg0.psf.io) or (pg*.iad1.psf.io and not pg0.iad1.psf.io)"
  salt-master: "salt-master.psf.io or salt-master.iad1.psf.io"
  tracker: "bugs.psf.io or bugs.iad1.psf.io"
