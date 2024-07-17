{% include "networking.sls" %}

firewall:
  frontend-planet:
    port: 9000
    source: *psf_internal_network
