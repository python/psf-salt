postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.3
      - pgbouncer
      - stunnel4


/var/run/stunnel:
  file.directory:
    - user: root
    - group: root
    - mode: 750
    - require:
      - pkg: postgresql


/etc/stunnel/stunnel.conf:
  file.managed:
    - source: salt://postgresql/configs/stunnel.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: postgresql
      - file: /var/run/stunnel
