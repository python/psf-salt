{% include "networking.sls" %}

firewall:
  http:
    port: 80
  https:
    port: 443
  smtp:
    port: 25
  smtps:
    port: 587
  submission:
    port: 465
  frontend-bugs:
    port:
      {% for tracker in pillar["bugs"]["trackers"].items() %}
      - {{ config.get('port') }}
      {% endfor %}
    source: *psf_internal_network