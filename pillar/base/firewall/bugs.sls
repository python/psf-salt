{% include "networking.sls" %}

firewall:
  frontend-bugs:
    port: 9000:9002
    source: *psf_internal_network
  postscreen:
    port: 20025
    source: *psf_internal_network
