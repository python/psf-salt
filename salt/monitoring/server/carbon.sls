graphite-carbon:
  pkg.installed


/etc/carbon/carbon.conf:
  file.managed:
    - source: salt://monitoring/server/configs/carbon.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite-carbon


/etc/carbon/storage-schemas.conf:
  file.managed:
    - source: salt://monitoring/server/configs/storage-schemas.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite-carbon


carbon-cache:
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/carbon/carbon.conf
      - file: /etc/carbon/storage-schemas.conf
    - require:
      - pkg: graphite-carbon
      - file: /etc/carbon/carbon.conf
      - file: /etc/carbon/storage-schemas.conf
