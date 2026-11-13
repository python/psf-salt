firewall:
  drop_tcp_ip_options:
    raw: '-A INPUT -p tcp -m u32 --u32 "0>>24&0xF=6:15" -j DROP'
  mail-http:
    port: 80
  mail-https:
    port: 443
  mail-smtp:
    port: 25
  mail-smtps:
    port: 465
  mail-ldap:
    port: 143
  mail-ldaps:
    port: 993
  mail-nntp:
    port: 119
  mail-snntp:
    port: 563
  mail-submission:
    port: 587
  mail-ntp-udp:
    port: 123
    protocol: udp
  mail-ntp-tcp:
    port: 123
    protocol: tcp
