postgresql:
  data_dir: /srv/postgresql/9.3/psf
  config_dir: /etc/postgresql/9.3/psf
  config_file: /etc/postgresql/9.3/psf/postgresql.conf
  hba_file: /etc/postgresql/9.3/psf/pg_hba.conf
  ident_file: /etc/postgresql/9.3/psf/pg_ident.conf
  pid_file: /var/run/postgresql/9.3-psf.pid
  recovery_file: /srv/postgresql/9.3/psf/recovery.conf

  port: 5432
  max_connections: 100

  databases:
    # database: owner
    bugs-python: "bugs-python"
    monitoring: monitoring
    pydotorg-prod: "pydotorg-prod"
    pydotorg-staging: "pydotorg-staging"
