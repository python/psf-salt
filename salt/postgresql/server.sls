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
    - watch:
      - file: {{ postgresql.hba_file }}
      - file: {{ postgresql.config_file }}
      {% if "postgresql-replica" in grains["roles"] %}
      - file: {{ postgresql.recovery_file }}
      {% endif %}
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.hba_file }}
      - file: {{ postgresql.config_file }}
      {% if "postgresql-replica" in grains["roles"] %}
      - file: {{ postgresql.recovery_file }}
      {% endif %}


{% if "postgresql-replica" in grains["roles"] %}
/etc/ssl/db:
  file.directory:
    - user: root
    - group: root
    - mode: 750

/etc/ssl/db/replicator.key:
  file.managed:
    - contents_pillar: postgresql-users:replicator:key
    - user: root
    - group: root
    - mode: 600
    - require:
      - file: /etc/ssl/db

/etc/ssl/db/replicator.crt:
  file.managed:
    - contents_pillar: postgresql-users:replicator:crt
    - user: root
    - group: root
    - mode: 640
    - require:
      - file: /etc/ssl/db
{% endif %}


postgresql-psf-cluster:
  cmd.run:
    {% if "postgresql-primary" in grains["roles"] %}
    - name: pg_createcluster --datadir {{ postgresql.data_dir }} --locale en_US.UTF-8 9.3 --port {{ postgresql.port }} psf
    {% elif "postgresql-replica" in grains["roles"] %}
    - name: pg_basebackup --pgdata {{ postgresql.data_dir }} -h {{ postgresql.primary }} -p {{ postgresql.port }} -U replicator
    - env:
      - PGSSLMODE: require
      - PGSSLCERT: /etc/ssl/db/replicator.crt
      - PGSSLKEY: /etc/ssl/db/replicator.key
    {% endif %}
    - unless: pg_lsclusters | grep '^9\.3\s\+psf\s\+'
    - require:
      - pkg: postgresql-server
      {% if data_partitions %}
      - mount: postgresql-data
      {% endif %}
      {% if "postgresql-replica" in grains["roles"] %}
      - file: /etc/ssl/db/replicator.key
      - file: /etc/ssl/db/replicator.crt
      {% endif %}

{{ postgresql.config_dir }}:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: 755
    - makedirs: True
    - require:
      - cmd: postgresql-psf-cluster


{{ postgresql.hba_file }}:
  file.managed:
    - source: salt://postgresql/configs/pg_hba.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{{ postgresql.config_file }}:
  file.managed:
    - source: salt://postgresql/configs/postgresql.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{% if "postgresql-replica" in grains["roles"] %}
{{ postgresql.recovery_file }}:
  file.managed:
    - source: salt://postgresql/configs/recovery.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}
{% endif %}


{% if "postgresql-primary" in grains["roles"] %}

replicator:
  postgres_user.present:
    - replication: True
    - require:
      - service: postgresql-server

{% endif %}
