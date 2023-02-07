
pgdg-repo:
  pkgrepo.managed:
    - humanname: PostgresSQL Global Development Group
    - name: deb http://apt.postgresql.org/pub/repos/apt {{ grains['oscodename'] }}-pgdg main
    - file: /etc/apt/sources.list.d/pgdg.list
    - gpgcheck: 1
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
    - refresh_db: true

postgresql-server:
  pkg.installed:
    - pkgs:
      - postgresql-10

clear_default_cluster:
  postgres_cluster.absent:
    - name: 'main'
    - version: '10'
    - require:
      - pkg: postgresql-server

roundup_postgres_backup_dir:
  file.directory:
    - name: /backup/postgresql/base_backups
    - user: postgres
    - group: postgres
    - mode: "0750"
    - makedirs: True

roundup_postgres_wal_archives:
  file.directory:
    - name: /backup/postgresql/wal_logs
    - user: postgres
    - group: postgres
    - mode: "0750"

roundup_cluster:
  postgres_cluster.present:
    - name: 'roundup'
    - version: '10'
    - locale: 'en_US.UTF-8'
    - encoding: 'UTF8'
    - datadir: '/srv/postgresql/10/roundup'
    - require:
      - pkg: postgresql-server

roundup_postgres_config:
  file.managed:
    - name: /etc/postgresql/10/roundup/conf.d/roundup.conf
    - source: salt://bugs/config/postgresql.conf
    - user: postgres
    - group: postgres

postgresql@10-roundup:
  service.running:
    - restart: True
    - enable: True
    - require:
      - postgres_cluster: clear_default_cluster
      - postgres_cluster: roundup_cluster
    - watch:
      - file: roundup_postgres_config

roundup_user:
  postgres_user.present:
    - name: roundup
    - password: roundup
    - createdb: True

roundup_postgres_backup_script:
  file.managed:
    - name: /var/lib/postgresql/backup.bash
    - source: salt:///bugs/files/postgres-backup.bash
    - user: postgres
    - group: postgres
    - mode: "0750"

roundup_postgres_nightly_backup:
  cron.present:
    - name: /var/lib/postgresql/backup.bash
    - identifier: roundup_postgres_nightly_backup
    - user: postgres
    - hour: 23
    - minute: 30
