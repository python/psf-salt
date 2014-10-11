{% include "networking.sls" %}

firewall:
  postgresql-psf-internal:
    port: 5432
    source: *psf_internal_network

  postgresql-pypi-internal:
    port: 5432
    source: *pypi_internal_network
