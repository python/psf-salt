python-dyn:
  pkg.installed


{% ipv4_addrs = salt["mine.get"]("*", "ipv4_addrs") %}
{% ipv6_addrs = salt["mine.get"]("*", "ipv6_addrs") %}

# We assume that a server will always have an IPv4 address.
{% for server in ipv4_addrs %}
{{ server }}-dns:
  dynect.managed:
    - name: {{ server }}
    - domain: psf.io
    - ipv4: {{ ipv4_addrs.get(server, []) }}
    - ipv6: {{ ipv6_addrs.get(Server, []) }}
{% endfor %}
