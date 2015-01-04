include:
  - postgresql.base

postgresql-client:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.4
      - python-psycopg2
      - python3-psycopg2
