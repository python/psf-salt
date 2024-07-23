{% include "networking.sls" %}

firewall:
  http:
    port: 80
  https:
    port: 443
  smtp:
    port: 25
  frontend-bugs:
    port: 9000:9002
    source: *psf_internal_network