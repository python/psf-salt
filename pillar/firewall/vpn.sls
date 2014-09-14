{% set vpn_cidr = salt["pillar.get"]("vpn_internal_network") %}


firewall:
  openvpn:
    port: 1194
    protocol: udp

  openvpn-forward-in:
    raw: -A FORWARD -i tun0 -s {{ vpn_cidr }} -j ACCEPT

  openvpn-forward-out:
    raw: -A FORWARD -o tun0 -d {{ vpn_cidr }} -j ACCEPT
