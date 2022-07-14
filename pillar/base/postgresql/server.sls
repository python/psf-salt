postgresql:
  data_dir: /srv/postgresql/9.4/psf
  config_dir: /etc/postgresql/9.4/psf
  config_file: /etc/postgresql/9.4/psf/postgresql.conf
  hba_file: /etc/postgresql/9.4/psf/pg_hba.conf
  ident_file: /etc/postgresql/9.4/psf/pg_ident.conf
  pid_file: /var/run/postgresql/9.4-psf.pid
  recovery_file: /srv/postgresql/9.4/psf/recovery.conf

  port: 5432
  max_connections: 100
  replicas: 1

  databases:
    codespeed-cpython:
      owner: "codespeed-cpython"
      cluster: "pg-nyc1-psf-io"
    codespeed-pypy:
      owner: "codespeed-pypy"
      cluster: "pg-nyc1-psf-io"
    roundup-cpython:
      owner: "roundup-cpython"
      cluster: pool-pg-nyc1-psf-io
    roundup-jython:
      owner: "roundup-jython"
      cluster: pg-nyc1-psf-io
    roundup-roundup:
      owner: "roundup-roundup"
      cluster: pg-nyc1-psf-io
    roundup-cpython_test:
      owner: "roundup-cpython_test"
      cluster: pg-nyc1-psf-io
    buildbot-master:
      owner: "buildbot-master"
      cluster: "pg-nyc1-psf-io"
    buildbot-master_test:
      owner: "buildbot-master_test"
      cluster: "pg-nyc1-psf-io"
