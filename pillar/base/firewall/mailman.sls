firewall:
  drop_tcp_ip_options:
    raw: '-A INPUT -p tcp -m u32 --u32 "0>>24&0xF=6:15" -j DROP'
  mailman-http:
    port: 80
  mailman-https:
    port: 443
  mailman-smtp:
    port: 25
  mailman-smtps:
    port: 465
  mailman-ldap:
    port: 143
  mailman-ldaps:
    port: 993
  mailman-nntp:
    port: 119
  mailman-snntp:
    port: 563
  mailman-submission:
    port: 587
