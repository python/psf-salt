/etc/nginx/sites.d/status.conf:
  file.managed:
    - source: salt://monitoring/client/configs/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/


/etc/diamond/collectors/NginxCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
      - file: /etc/nginx/sites.d/status.conf
      - file: /etc/diamond/collectors

