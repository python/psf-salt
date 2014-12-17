rsyslog:

  pkg:
    - installed

  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/rsyslog.d/*.conf


/etc/rsyslog.d/PLACEHOLDER.conf:
  file.managed
