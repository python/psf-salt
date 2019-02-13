# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "backup.ord1.psf.io"
  bugs: "bugs.ams1.psf.io"
  cdn-logs: "cdn-logs.nyc1.psf.io"
  consul: "consul*.nyc1.psf.io"
  docs: "docs.nyc1.psf.io"
  downloads: "dl-files.nyc1.psf.io"
  elasticsearch: "elasticsearch.nyc1.psf.io"
  hg: "hg.nyc1.psf.io"
  jython-web: "jython-web.nyc1.psf.io"
  loadbalancer: "lb*.nyc1.psf.io"
  mail: "mail1.ams1.psf.io"
  mailman: "mailman.nyc1.psf.io"
  monitoring: "monitoring.nyc1.psf.io"
  packages: "packages.nyc1.psf.io"
  planet: "planet.nyc1.psf.io"
  postgresql: "pg*.nyc1.psf.io"
  postgresql-primary: "pg0.nyc1.psf.io"
  postgresql-replica: "pg*.nyc1.psf.io and not pg0.nyc1.psf.io"
  pydotorg: "pydotorg*.nyc1.psf.io"
  pydotorg-prod: "pydotorg-prod.nyc1.psf.io"
  pydotorg-staging: "pydotorg-staging*.nyc1.psf.io"
  pycon: "pycon*.nyc1.psf.io"
  pycon-prod: "pycon-prod.nyc1.psf.io"
  pycon-staging: "pycon-staging.nyc1.psf.io"
  pythontest: "pythontest.nyc1.psf.io"
  salt-master: "salt.nyc1.psf.io"
  speed-web: "speed-web.nyc1.psf.io"
  wiki: "wiki.nyc1.psf.io"
  slack: "slack.nyc1.psf.io"
  discourse: "discourse*.nyc1.psf.io"

  # PyPI/Warehouse
  linehaul: "linehaul*.nyc1.psf.io"

  # Misc PyPA
  web-pypa: "web*.pypa.nyc1.psf.io"
