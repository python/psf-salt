{% include "networking.sls" %}

firewall:
  frontend-traffic-cpython:
    port: 9000
    source: *psf_internal_network
  frontend-traffic-pypy:
    port: 9001
    source: *psf_internal_network
