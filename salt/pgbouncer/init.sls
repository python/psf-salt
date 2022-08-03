
pgbouncer-pkg:
  pkg.installed:
    - pkgs:
      - pgbouncer

/etc/pgbouncer/pgbouncer.ini:
  file.managed:
    - source: salt://pgbouncer/templates/pgbouncer.ini
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0600"
    - show_changes: False
    - require:
      - pkg: pgbouncer-pkg

/etc/pgbouncer/userlist.txt:
  file.managed:
    - source: salt://pgbouncer/templates/userlist.txt
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0600"
    - show_changes: False
    - require:
      - pkg: pgbouncer-pkg

pgbouncer-service:
  service.running:
    - name: pgbouncer
    - enable: True
    - reload: True
    - require:
      - pkg: pgbouncer-pkg
      - file: /etc/pgbouncer/pgbouncer.ini
      - file: /etc/pgbouncer/userlist.txt
    - watch:
      - file: /etc/pgbouncer/pgbouncer.ini
      - file: /etc/pgbouncer/userlist.txt
