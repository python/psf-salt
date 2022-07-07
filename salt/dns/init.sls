python3-boto3:
  pkg.installed

{% set public_ipv4 = salt["mine.get"]("*", "public_ipv4") %}

# We assume that a server will always have an IPv4 address.

{% for server in public_ipv4 %}
{{ server }}-route53:
  boto3_route53.rr_present:
    - DomainName: psf.io.
    - Name: {{ server }}.
    - TTL: 3600
    - Type: A
    - ResourceRecords: {{ public_ipv4.get(server, []) }}
{% endfor %}
