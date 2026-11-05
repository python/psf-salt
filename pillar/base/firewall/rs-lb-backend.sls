{% include "networking.sls" %}

firewall:
  drop_tcp_ip_options:
    raw: '-A INPUT -p tcp -m u32 --u32 "0>>24&0xF=6:15" -j DROP'
  frontend-traffic:
    port: 9000
    source: *psf_internal_network
