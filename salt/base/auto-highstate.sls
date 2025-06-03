{% set sentry_enabled = salt["pillar.get"]("secrets:sentry:token") %}

/usr/local/bin/sentry-checkin.sh:
  file.managed:
    - source: salt://base/scripts/sentry-checkin.sh
    - mode: '0755'
    - user: root
    - group: root

15m-interval-highstate:
  cron.present:
    - name: {{ '/usr/local/bin/sentry-checkin.sh' if sentry_enabled else 'timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1' }}
    - identifier: 15m-interval-highstate
    - minute: '*/15'
    {% if sentry_enabled %}
    - require:
      - file: /usr/local/bin/sentry-checkin.sh
    {% endif %}

/etc/logrotate.d/salt:
  {% if grains["oscodename"] == "xenial" %}
  file.absent: []
  {% else %}
  file.managed:
    - source: salt://base/config/salt-logrotate.conf
  {% endif %}
