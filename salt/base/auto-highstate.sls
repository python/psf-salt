{% set sentry_monitor_id = salt["pillar.get"]("sentry_cron:monitor_id") %}

15m-interval-highstate:
  cron.present:
    - identifier: 15m-interval-highstate
    - name: |
        timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1
        {% if sentry_monitor_id %}
        curl -X POST \
          "https://sentry.io/api/0/organizations/python-software-foundation/monitors/{{ sentry_monitor_id }}/checkins/" \
          -H "Authorization: Bearer {{ pillar.get('sentry', {}).get('token') }}" \
          -H "Content-Type: application/json" \
          -d '{"status": "ok"}' &> /dev/null
        {% endif %}
    - minute: '*/15'

/etc/logrotate.d/salt:
  {% if grains["oscodename"] == "xenial" %}
  file.absent: []
  {% else %}
  file.managed:
    - source: salt://base/config/salt-logrotate.conf
  {% endif %}
