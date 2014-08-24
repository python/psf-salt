/var/log/fastly/:
  file.directory:
    - user: syslog
    - group: adm

rsyslog:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: /etc/rsyslog.d/*.conf

/etc/rsyslog.d/25-fastly-logs.conf:
  file.managed:
    - source: salt://cdn-logs/config/fastly.rsyslog.conf
    - template: jinja
    - context:
      fastly_logging_names: {{ pillar["fastly-logging-names"] }}

/etc/logrotate.d/fastly-logs:
  file.managed:
    - source: salt://cdn-logs/config/fastly.logrotate.conf
