# See https://developer.fastly.com/reference/api/utils/public-ip-list/
{% set fastly_ip_ranges = salt['http.query']('https://api.fastly.com/public-ip-list', decode=True) %}

firewall:
{% for address in fastly_ip_ranges.get('dict', {}).get('addresses', []) %}
  fastly_syslog_ipv4_{{ loop.index }}:
      source: {{ address }}
      port: 514
{% endfor %}

{% for address in fastly_ip_ranges.get('dict', {}).get('ipv6_addresses', []) %}
  fastly_syslog_ipv6_{{ loop.index }}:
      source6: {{ address }}
      port: 514
{% endfor %}
