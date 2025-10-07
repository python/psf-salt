{% set sentry_enabled = salt["pillar.get"]("project_id") and salt["pillar.get"]("project_key") and salt["pillar.get"]("ingest_url") %}

{% if sentry_enabled %}
curl:
  pkg.installed

/usr/local/bin/sentry-checkin.sh:
  file.managed:
    - source: salt://base/scripts/sentry-checkin.sh.jinja
    - template: jinja
    - mode: '0755'
    - user: root
    - group: root
{% endif %}

15m-interval-highstate:
  cron.present:
    - identifier: 15m-interval-highstate
    - name: "{% if sentry_enabled %}/usr/local/bin/sentry-checkin.sh {% endif %}timeout 30m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1"
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
