dyn:
  pip.installed

boto3:
  pip.installed

{% set ipv4_addrs = salt["mine.get"]("*", "ipv4_addrs") %}
{% set public_ipv4 = salt["mine.get"]("*", "public_ipv4") %}

# We assume that a server will always have an IPv4 address.
{% for server in ipv4_addrs %}
{{ server }}-dns:
  dynect.managed:
    - name: {{ server }}
    - domain: psf.io
    - ipv4: {{ ipv4_addrs.get(server, []) }}
{% endfor %}

{% for server in public_ipv4 %}
{{ server }}-route53:
  boto3_route53.rr_present:
    - DomainName: psf.io.
    - Name: {{ server }}.
    - TTL: 3600
    - Type: A
    - ResourceRecords: {{ public_ipv4.get(server, []) }}
{% endfor %}
