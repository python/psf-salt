# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "backup-server.vagrant.psf.io"
  bugs: "bugs.vagrant.psf.io"
  cdn-logs: "cdn-logs.vagrant.psf.io"
  consul: "consul.vagrant.psf.io"
  docs: "docs.vagrant.psf.io"
  downloads: "downloads.vagrant.psf.io"
  hg: "hg.vagrant.psf.io"
  jython-web: "jython-web.vagrant.psf.io"
  loadbalancer: "loadbalancer.vagrant.psf.io"
  monitoring: "monitoring.vagrant.psf.io"
  packages: "packages.vagrant.psf.io"
  planet: "planet.vagrant.psf.io"
  postgresql: "postgresql-*.vagrant.psf.io"
  postgresql-primary: "postgresql-primary.vagrant.psf.io"
  postgresql-replica: "postgresql-replica.vagrant.psf.io"
  salt-master: "salt-master.vagrant.psf.io"
  speed-web: "speed-web.vagrant.psf.io"
  tracker: "tracker.vagrant.psf.io"
  wiki: "wiki.vagrant.psf.io"

  web-pypa: "pypa-web.vagrant.psf.io"
