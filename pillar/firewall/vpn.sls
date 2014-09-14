{% set vpn_cidr = "10.8.0.0/24" %}


firewall:
  openvpn:
    port: 1194
    protocol: udp

  openvpn-https:
    port: 443
    protocol: tcp

  openvpn-forward-in:
    raw: -A FORWARD -i tun0 -s {{ vpn_cidr }} -j ACCEPT

  openvpn-forward-out:
    raw: -A FORWARD -o tun0 -d {{ vpn_cidr }} -j ACCEPT
