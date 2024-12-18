boto:
  pip.installed:
    - pip_bin: /usr/bin/salt-pip

boto3:
  pip.installed:
    - pip_bin: /usr/bin/salt-pip

{% set public_ipv4 = salt["mine.get"]("*", "public_ipv4") %}

# We assume that a server will always have an IPv4 address.

# TODO(@JacobCoffee): Update back to boto3_route53
{% for server in public_ipv4 %}
{{ server }}-route53:
  boto_route53.rr_present:
    - zone: psf.io.
    - name: {{ server }}.
    - ttl: 3600
    - record_type: A
    - value: {{ public_ipv4.get(server, []) }}
{% endfor %}
