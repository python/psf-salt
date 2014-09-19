{% set postgresql = salt["pillar.get"]("postgresql") %}

postgresql-server:
  pkg.installed:
    - pkgs:
      - postgresql-9.3
      - postgresql-contrib-9.3

  cmd.run:
    - name: pg_dropcluster --stop 9.3 main
    - onlyif: pg_lsclusters | grep '^9\.3\s\+main\s\+'
    - require:
      - pkg: postgresql-server

  service.running:
    - name: postgresql
    - enable: True
    - reload: True
    - watch:
      - file: {{ postgresql.hba_file }}
      - file: {{ postgresql.config_file }}
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.hba_file }}
      - file: {{ postgresql.config_file }}


postgresql-psf-cluster:
  cmd.run:
    - name: pg_createcluster --datadir {{ postgresql.data_dir }} --locale en_US.UTF-8 9.3 --port {{ postgresql.port }} psf
    - unless: pg_lsclusters | grep '^9\.3\s\+psf\s\+'
    - require:
      - pkg: postgresql-server


{{ postgresql.hba_file }}:
  file.managed:
    - source: salt://postgres/configs/pg_hba.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - requires:
      - cmd: postgresql-psf-cluster


{{ postgresql.config_file }}:
  file.managed:
    - source: salt://postgres/configs/postgresql.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - requires:
      - cmd: postgresql-psf-cluster
