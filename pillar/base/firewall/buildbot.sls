{% include "networking.sls" %}

firewall:
  frontend-traffic:
    port: 9000
    source: *psf_internal_network
  buildbot-worker:
    port: 9020
