# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "backup.ord1.psf.io"
  cdn-logs: "cdn-logs.iad1.psf.io"
  consul: "consul*.iad1.psf.io"
  docs: "docs.iad1.psf.io"
  downloads: "dl-files.iad1.psf.io"
  elasticsearch: "elasticsearch.iad1.psf.io"
  hg: "hg.iad1.psf.io"
  jython-web: "jython-web.iad1.psf.io"
  loadbalancer: "lb*.iad1.psf.io"
  monitoring: "monitoring.iad1.psf.io"
  packages: "packages.iad1.psf.io"
  planet: "planet.iad1.psf.io"
  postgresql: "pg*.iad1.psf.io"
  postgresql-primary: "pg0.iad1.psf.io"
  postgresql-replica: "pg*.iad1.psf.io and not pg0.iad1.psf.io"
  pydotorg: "pydotorg*.iad1.psf.io"
  pydotorg-prod: "pydotorg-prod.iad1.psf.io"
  pydotorg-staging: "pydotorg-staging.iad1.psf.io"
  pythontest: "pythontest.iad1.psf.io"
  salt-master: "salt.iad1.psf.io"
  speed-web: "speed-web.iad1.psf.io"
  tracker: "bugs.iad1.psf.io"

  web-pypa: "web*.pypa.iad1.psf.io"
