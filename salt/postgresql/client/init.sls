pgbouncer:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.3
      - python-psycopg2
      - python3-psycopg2
      - pgbouncer

  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/pgbouncer/pgbouncer.ini
      - file: /etc/pgbouncer/userlist.txt
      - file: /etc/default/pgbouncer
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


/etc/default/pgbouncer:
  file.managed:
    - source: salt://postgresql/client/configs/pgbouncer-default
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: pgbouncer
