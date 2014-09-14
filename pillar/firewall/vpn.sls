firewall:
  openvpn:
    port: 1194
    protocol: udp

  openvpn-forward:
    raw: -A FORWARD -i tun0 -s 10.8.0.0/24 -j ACCEPT
