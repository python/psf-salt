boto-pkgs:
  pkg.installed:
    - pkgs:
      - python3-boto
      - python3-boto3

{% set public_ipv4 = salt["mine.get"]("*", "public_ipv4") %}

# We assume that a server will always have an IPv4 address.

# TODO: Update back to boto3_route53 when https://github.com/saltstack/salt/pull/60951 makes it into a release
{% for server in public_ipv4 %}
{{ server }}-route53:
  boto_route53.rr_present:
    - zone: psf.io.
    - name: {{ server }}.
    - ttl: 3600
    - record_type: A
    - value: {{ public_ipv4.get(server, []) }}
{% endfor %}
