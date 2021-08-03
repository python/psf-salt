{% include "networking.sls" %}

firewall:
  svn-traffic:
    port: 9001
    source: *psf_internal_network
  legacy-traffic:
    port: 9002
    source: *psf_internal_network
