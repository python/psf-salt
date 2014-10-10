/etc/diamond/collectors/HAProxyCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
          url: "http://localhost:4646/haproxy?stats;csv"
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
