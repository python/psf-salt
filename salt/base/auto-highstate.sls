{% set sentry_monitor_id = salt["pillar.get"]("sentry_cron:monitor_id") %}
{% set sentry_token = salt["pillar.get"]("secrets:sentry:token") %}
{% set org_slug = salt["pillar.get"]("sentry:org_slug") %}
{% set project_slug = salt["pillar.get"]("sentry:project_slug") %}
{% set project_id = salt["pillar.get"]("sentry:project_id") %}
{% set project_key = salt["pillar.get"]("sentry:project_key") %}
{% set ingest_url = salt["pillar.get"]("sentry:ingest_url") %}

15m-interval-highstate:
  cron.present:
    - identifier: 15m-interval-highstate
    - name: |
        timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1
        {% if sentry_monitor_id and sentry_token and org_slug and project_id and project_key and ingest_url %}
        curl "https://{{ ingest_url }}/api/{{ project_id }}/cron/salt-highstate-{{ grains['id'] | replace('.', '') }}/{{ project_key }}/?status=in_progress" &> /dev/null && curl "https://{{ ingest_url }}/api/{{ project_id }}/cron/salt-highstate-{{ grains['id'] | replace('.', '') }}/{{ project_key }}/?status=ok" &> /dev/null
        {% endif %}
    - minute: '*/15'

/etc/logrotate.d/salt:
  {% if grains["oscodename"] == "xenial" %}
  file.absent: []
  {% else %}
  file.managed:
    - source: salt://base/config/salt-logrotate.conf
  {% endif %}
