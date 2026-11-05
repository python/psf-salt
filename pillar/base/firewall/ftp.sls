
firewall:
  drop_tcp_ip_options:
    raw: '-A INPUT -p tcp -m u32 --u32 "0>>24&0xF=6:15" -j DROP'
  ftp-20:
    port: 20
  ftp-21:
    port: 21
  ftp-incoming:
    raw: -A INPUT -p tcp --destination-port 10090:10190 -j ACCEPT
