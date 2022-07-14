postgresql:
  data_dir: /srv/postgresql/11/psf
  config_dir: /etc/postgresql/11/psf
  config_file: /etc/postgresql/11/psf/postgresql.conf
  hba_file: /etc/postgresql/11/psf/pg_hba.conf
  ident_file: /etc/postgresql/11/psf/pg_ident.conf
  pid_file: /var/run/postgresql/11-psf.pid
  recovery_file: /srv/postgresql/11/psf/recovery.conf

  port: 5432
  max_connections: 100
  replicas: 1
