
pgdg-repo:
  pkgrepo.managed:
    - humanname: PostgresSQL Global Development Group
    - name: deb http://apt.postgresql.org/pub/repos/apt/ {{ grains['oscodename'] }}-pgdg main
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

roundup_cluster:
  postgres_cluster.present:
    - name: 'roundup'
    - version: '10'
    - locale: 'en_US.UTF-8'
    - encoding: 'UTF8'
    - datadir: '/srv/postgresql/10/roundup'
    - require:
      - pkg: postgresql-server

postgresql@10-roundup:
  service.running:
    - restart: True
    - enable: True
    - require:
      - postgres_cluster: clear_default_cluster
      - postgres_cluster: roundup_cluster

roundup_user:
  postgres_user.present:
    - name: roundup
    - password: roundup
    - createdb: True
