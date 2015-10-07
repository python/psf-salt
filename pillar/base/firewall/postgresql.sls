{% include "networking.sls" %}

firewall:
  postgresql:
    port: 5432

fwmangle:
  postgresql-stunnel: -A OUTPUT -p tcp -m multiport --sports 5431 -j MARK --set-xmark 0x1/0xffffffff
