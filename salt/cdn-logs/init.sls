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

{% set timer_file = '/etc/systemd/system/timers.target.wants/logrotate.timer' %}

logrotate_time_hourly:
  file.replace:
    - name: {{ timer_file }}
    - pattern: '^OnCalendar'
    - repl: 'OnCalendar=hourly'

{{ timer_file }}:
  file.managed:
     - source: /etc/cron.hourly/logrotate
#    - source: salt://cdn-logs/config/fastly.logrotate.conf

/etc/cron.hourly/logrotate:
  file.symlink:
    - target: /etc/cron.daily/logrotate
  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/cron.hourly/logrotate
