{% include "networking.sls" %}

firewall:
  svn-traffic:
    port: 9001
    source: *psf_internal_network
