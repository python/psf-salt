/var/log/fastly/:
  file.directory:
    - user: syslog
    - group: adm

/etc/rsyslog.d/25-fastly-logs.conf:
  file.managed:
    - source: salt://cdn-logs/config/fastly.rsyslog.conf
    - template: jinja
    - context:
      fastly_logging_names: {{ pillar["fastly-logging-names"] }}

/etc/logrotate.d/fastly-logs:
  file.managed:
    - source: salt://cdn-logs/config/fastly.logrotate.conf

logrotate_time_hourly:
  file.replace:
    - name: /etc/systemd/system/timers.target.wants/logrotate.timer
    - pattern: OnCalendar=daily
    - repl: OnCalendar=hourly
  cmd.run:
    - name: systemctl daemon-reload
    - require:
      - file: logrotate_time_hourly
