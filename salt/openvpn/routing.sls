{% set vpn0_internal = salt["pillar.get"]("vpn0_internal_network") %}
{% set vpn1_internal = salt["pillar.get"]("vpn1_internal_network") %}

{% set vpn0_internal = salt["ip_picker.subnet_mask_for_cidr"](cidr=vpn0_internal) %}
{% set vpn1_internal = salt["ip_picker.subnet_mask_for_cidr"](cidr=vpn1_internal) %}

{% set psf_internal = salt["pillar.get"]("psf_internal_network") %}
{% set pypi_internal = salt["pillar.get"]("pypi_internal_network") %}

{% set interfaces = salt["ip_picker.interfaces_for_cidr"](cidr=psf_internal) %}
{% set gateway = salt["pillar.get"]("psf_internal_vpn_gateway") %}

{% if not interfaces %}
{% set interfaces = salt["ip_picker.interfaces_for_cidr"](cidr=pypi_internal) %}
{% set gateway = salt["pillar.get"]("pypi_internal_vpn_gateway") %}
{% endif %}


{% for interface in interfaces %}
{{ interface }}:
  network.routes:
    - routes:
      - name: vpn
        ipaddr: {{ vpn0_internal.address }}
        netmask: {{ vpn0_internal.subnet }}
        gateway: {{ gateway }}
      - name: vpn-https
        ipaddr: {{ vpn1_internal.address }}
        netmask: {{ vpn1_internal.subnet }}
        gateway: {{ gateway }}

  cmd.wait:  # Work around https://bugs.launchpad.net/ubuntu/+source/ifupdown/+bug/1301015
    - name: ifdown {{ interface }} && ifup {{ interface }}
    - watch:
      - network: {{ interface }}
{% endfor %}
