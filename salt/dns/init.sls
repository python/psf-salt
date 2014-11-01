python-dyn:
  pkg.installed


{% set ipv4_addrs = salt["mine.get"]("*", "ipv4_addrs") %}

# We assume that a server will always have an IPv4 address.
{% for server in ipv4_addrs %}
{{ server }}-dns:
  dynect.managed:
    - name: {{ server }}
    - domain: psf.io
    - ipv4: {{ ipv4_addrs.get(server, []) }}
{% endfor %}
