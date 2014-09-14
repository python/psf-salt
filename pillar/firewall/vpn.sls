{% set vpn_cidr = salt["pillar.get"]("vpn_internal_network") %}
{% set vpn_interface = salt["ip_picker.interfaces_for_cidr"](cidr=vpn_cidr) %}

firewall:
  openvpn:
    port: 1194
    protocol: udp

  openvpn-forward-in:
    raw: -A FORWARD -i {{ vpn_interface }} -s {{ vpn_cidr }} -j ACCEPT

  openvpn-forward-out:
    raw: -A FORWARD -o {{ vpn_interface }} -d {{ vpn_cidr }} -j ACCEPT
