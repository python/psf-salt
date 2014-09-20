{% set postgresql = salt["pillar.get"]("postgresql") %}
{% set data_partitions = salt["rackspace.data_partitions"]() %}

{% if data_partitions|length() > 1 %}
This Does Not Support Multi Data Disk Servers!!!!
{% endif %}

{% for partition in data_partitions %}
postgresql-data:
  blockdev.formatted:
    - name: /dev/{{ partition.partition }}
    - fs_type: ext4

  mount.mounted:
    - name: /srv/postgresql
    - device: /dev/{{ partition.partition }}
    - fstype: ext4
    - mkmnt: True
    - opts: "data=writeback,noatime,nodiratime"
    - require:
      - blockdev: postgresql-data
{% endfor %}


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
    {% if "postgresql-primary" in grains["roles"] %}
    - name: pg_createcluster --datadir {{ postgresql.data_dir }} --locale en_US.UTF-8 9.3 --port {{ postgresql.port }} psf
    {% elif "postgresql-replica" in grains["roles"] %}
    - name: exit 1
    {% endif %}
    - unless: pg_lsclusters | grep '^9\.3\s\+psf\s\+'
    - require:
      - pkg: postgresql-server
      {% if data_partitions %}
      - mount: postgresql-data
      {% endif %}


{{ postgresql.hba_file }}:
  file.managed:
    - source: salt://postgresql/configs/pg_hba.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - requires:
      - cmd: postgresql-psf-cluster


{{ postgresql.config_file }}:
  file.managed:
    - source: salt://postgresql/configs/postgresql.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - requires:
      - cmd: postgresql-psf-cluster


{% if "postgresql-primary" in grains["roles"] %}

replicator:
  postgres_user.present:
    - replication: True

{% endif %}
