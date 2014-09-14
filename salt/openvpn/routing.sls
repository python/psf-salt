{% set psf_internal = salt["pillar.get"]("psf_internal_network") %}
{% set pypi_internal = salt["pillar.get"]("pypi_internal_network") %}


{% for interface in salt["ip_picker.interfaces_for_cidr"](cidr=psf_internal) %}
{{ interface }}:
  network.routes:
    - routes:
      - name: vpn
        ipaddr: 10.8.0.0
        netmask: 255.255.255.0
        gateway: 192.168.5.10
{% endfor %}


{% for interface in salt["ip_picker.interfaces_for_cidr"](cidr=pypi_internal) %}
{{ interface }}:
  network.routes:
    - routes:
      - name: vpn
        ipaddr: 10.8.0.0
        netmask: 255.255.255.0
        gateway: 172.16.57.17
{% endfor %}
