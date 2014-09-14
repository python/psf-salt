{% set vpn0_cidr = "10.8.0.0/24" %}
{% set vpn1_cidr = "10.9.0.0/24" %}


firewall:
  openvpn:
    port: 1194
    protocol: udp

  openvpn-https:
    port: 443
    protocol: tcp

  openvpn-forward-in:
    raw: -A FORWARD -i tun0 -s {{ vpn0_cidr }} -j ACCEPT

  openvpn-forward-out:
    raw: -A FORWARD -o tun0 -d {{ vpn0_cidr }} -j ACCEPT

  openvpn-https-forward-in:
    raw: -A FORWARD -i tun1 -s {{ vpn1_cidr }} -j ACCEPT

  openvpn-https-forward-out:
    raw: -A FORWARD -o tun1 -d {{ vpn1_cidr }} -j ACCEPT
