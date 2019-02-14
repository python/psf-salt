# This file will map roles to compound matchers. They should not use anything
# from the system grains as we cannot assume that anything from the target
# system is accurate. Generally these will instead be based off of node ids.
#
# See documentation for compound matchers here:
#   http://docs.saltstack.com/en/latest/topics/targeting/compound.html

roles:
  backup-server: "backup.sfo1.psf.io"
  cdn-logs: "cdn-logs.nyc1.psf.io"
  consul: "consul*.nyc1.psf.io"
  docs: "docs.nyc1.psf.io"
  downloads: "downloads.nyc1.psf.io"
  loadbalancer: "lb*.nyc1.psf.io"
  salt-master: "salt.nyc1.psf.io"
