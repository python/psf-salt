monitoring-psycopg2:
  pkg.installed:
    - name: python-psycopg2


/etc/diamond/collectors/PostgresqlCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
      collector:
        enabled: True
        extended: True
        interval: 30
        user: diamond
        password: {{ salt["pillar.get"]("postgresql-superusers:diamond") }}
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      service: diamond
