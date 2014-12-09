{% include "networking.sls" %}
firewall:
  elasticsearch_psf_internal:
    port: 9200
    source: *psf_internal_network
