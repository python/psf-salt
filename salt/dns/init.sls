python-dyn:
  pkg.installed


{% for server, addresses in salt["mine.get"]("*", "ip_picker.public_addresses").items() %}
{{ server }}-dns:
  dynect.managed:
    - name: {{ server }}
    - domain: psf.io
    - ipv4: {{ addresses["ipv4"] }}
    - ipv6: {{ addresses["ipv6"] }}
{% endfor %}
