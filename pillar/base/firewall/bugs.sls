firewall:
  http:
    port: 80
  https:
    port: 443
  smtp:
    port: 25
  smtps:
    port: 587
  submission:
    port: 465
  frontend-planet:
    port: 9000
    source: *psf_internal_network