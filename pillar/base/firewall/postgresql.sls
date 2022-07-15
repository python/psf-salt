{% include "networking.sls" %}

firewall:
  postgresql:
    port: 5432
