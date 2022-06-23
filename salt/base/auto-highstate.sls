{% set dms_token = salt["pillar.get"]("deadmanssnitch:token") %}

{% if dms_token %}
15m-interval-highstate:
  cron.present:
    - identifier: 15m-interval-highstate
    - name: "timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1; curl https://nosnch.in/{{ dms_token }} &> /dev/null"
    - minute: '*/15'
{% else %}
15m-interval-highstate:
  cron.present:
    - identifier: 15m-interval-highstate
    - name: "timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1"
    - minute: '*/15'
{% endif %}

/etc/logrotate.d/salt:
  {% if grains["oscodename"] == "xenial" %}
  file.absent: []
  {% else %}
  file.managed:
    - source: salt://base/config/salt-logrotate.conf
  {% endif %}
