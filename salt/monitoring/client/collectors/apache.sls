exclude:
  - id: /etc/diamond/collectors/HttpdCollector.conf


HttpdCollector-Override:
  file.managed:
    - name: /etc/diamond/collectors/HttpdCollector.conf
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
      - file: /etc/apache2/sites-available/stats.conf
      - cmd: /etc/apache2/sites-enabled/stats.conf
