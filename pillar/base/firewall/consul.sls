firewall:
  drop_tcp_ip_options:
    raw: '-A INPUT -p tcp -m u32 --u32 "0>>24&0xF=6:15" -j DROP'
  consul-tcp:
    port: 8300:8302
    protocol: tcp
  consul-udp:
    port: 8300:8302
    protocol: udp
