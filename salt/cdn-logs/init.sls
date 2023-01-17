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

/etc/systemd/system/timers.target.wants/logrotate.timer:
  ini.options_present:
    - name: /etc/systemd/system/timers.target.wants/logrotate.timer
    - separator: '='
    - sections:
        Unit:
          Description: 'Hourly rotation of log files'
        Timer:
          OnCalendar: hourly
  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - ini: /etc/systemd/system/timers.target.wants/logrotate.timer
