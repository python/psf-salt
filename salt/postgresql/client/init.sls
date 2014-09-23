pgbouncer:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.3
      - pgbouncer

  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/pgbouncer/pgbouncer.ini
      - file: /etc/pgbouncer/userlist.txt
    - require:
      - pkg: pgbouncer


/etc/pgbouncer/pgbouncer.ini:
  file.managed:
    - source: salt://postgresql/client/configs/pgbouncer.ini.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - pkg: pgbouncer


/etc/pgbouncer/userlist.txt:
  file.managed:
    - source: salt://postgresql/client/configs/userlist.txt.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - pkg: pgbouncer
