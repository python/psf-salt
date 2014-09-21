postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.3
      - pgbouncer
      - stunnel4


/etc/stunnel/stunnel.conf:
  file.managed:
    - source: salt://postgresql/configs/stunnel.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: postgresql


/etc/default/stunnel4:
  file.managed:
    - source: salt://postgresql/configs/stunnel-default
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: postgresql


/var/run/stunnel4:
  file.directory:
    - user: root
    - group: root
    - mode: 750
    - require:
      - pkg: postgresql


stunnel4:
  service.running:
    - enable: True
    - watch:
      - file: /etc/stunnel/stunnel.conf
    - require:
      - pkg: postgresql
      - file: /etc/stunnel/stunnel.conf
