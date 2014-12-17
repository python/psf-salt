{% set postgresql = salt["pillar.get"]("postgresql", {}) %}
{% set data_partitions = salt["rackspace.data_partitions"]() %}

{% if salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}
{% set postgresql_primary = ((salt["mine.get"](pillar["roles"]["postgresql-primary"], "psf_internal").items())|sort(attribute='0')|first)[1]|sort()|first %}
{% endif %}

{% if data_partitions|length() > 1 %}
This Does Not Support Multi Data Disk Servers!!!!
{% endif %}

include:
  - monitoring.client.collectors.postgresql
{% if salt["match.compound"](pillar["roles"]["postgresql-primary"]) %}
  - .wal-e
{% endif %}

postgresql-data:
{% if data_partitions %}
  blockdev.formatted:
    - name: /dev/{{ data_partitions[0].partition }}
    - fs_type: ext4

  mount.mounted:
    - name: /srv/postgresql
    - device: /dev/{{ data_partitions[0].partition }}
    - fstype: ext4
    - mkmnt: True
    - opts: "data=writeback,noatime,nodiratime"
    - require:
      - blockdev: postgresql-data
{% endif %}

  file.directory:
    - name: /srv/postgresql/9.3
    - user: root
    - group: root
    - mode: 777
{% if data_partitions %}
    - require:
      - mount: postgresql-data
{% else %}
    - makedirs: True
{% endif %}


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
    - restart: True
    - enable: True
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}/conf.d
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}
      - cmd: consul-template
      {% endif %}
    - watch:
      - file: /etc/ssl/private/postgresql.psf.io.pem
      - file: {{ postgresql.config_file }}
      - file: {{ postgresql.ident_file }}
      - file: {{ postgresql.hba_file }}
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}
      - file: /etc/ssl/certs/PSF_CA.pem
      {% endif %}


postgresql-psf-cluster:
  cmd.run:
    {% if salt["match.compound"](pillar["roles"]["postgresql-primary"]) %}
    - name: pg_createcluster --datadir {{ postgresql.data_dir }} --locale en_US.UTF-8 9.3 --port {{ postgresql.port }} psf
    {% else %}
    - name: pg_basebackup --pgdata {{ postgresql.data_dir }} -U replicator
    - env:
      - PGHOST: postgresql.psf.io
      - PGHOSTADDR: {{ postgresql_primary }}
      - PGPORT: "{{ postgresql.port }}"
      - PGSSLMODE: verify-full
      - PGSSLROOTCERT: /etc/ssl/certs/PSF_CA.pem
      - PGPASSWORD: {{ pillar["postgresql-users"]["replicator"] }}
    - user: postgres
    {% endif %}
    - unless: pg_lsclusters | grep '^9\.3\s\+psf\s\+'
    - require:
      - pkg: postgresql-server
      - file: postgresql-data
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}
      - file: /etc/ssl/certs/PSF_CA.pem
      - file: /etc/consul.d/service-postgresql.json
      - service: consul
      {% endif %}


# Make sure that our log directory is writeable
/var/log/postgresql:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: 755

# Make sure that our log file is writeable
/var/log/postgresql/postgresql-9.3-psf.log:
  file.managed:
    - user: postgres
    - group: postgres
    - mode: 640


{{ postgresql.config_dir }}:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: 755
    - makedirs: True
    - require:
      - cmd: postgresql-psf-cluster


{{ postgresql.config_dir }}/conf.d:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: 755
    - makedirs: True
    - require:
      - file: {{ postgresql.config_dir }}


{{ postgresql.hba_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/pg_hba.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{{ postgresql.config_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/postgresql.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{{ postgresql.ident_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/pg_ident.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{% if salt["match.compound"](pillar["roles"]["postgresql-primary"]) %}

replicator:
  postgres_user.present:
    - replication: True
    - password: {{ pillar["postgresql-replicator"] }}
    - require:
      - service: postgresql-server

{% for user, password in salt["pillar.get"]("postgresql-superusers", {}).items() %}
{{ user }}-superuser:
  postgres_user.present:
    - name: {{ user }}
    - superuser: True
    - password: {{ password }}
    - require:
      - service: postgresql-server
{% endfor %}

{% for user, password in salt["pillar.get"]("postgresql-users", {}).items() %}
{{ user }}-user:
  postgres_user.present:
    - name: {{ user }}
    - password: {{ password }}
    - require:
      - service: postgresql-server
{% endfor %}

{% for database, user in postgresql.get("databases", {}).items() %}
{{ database }}-database:
  postgres_database.present:
    - name: {{ database }}
    - owner: {{ user }}
    - require:
      - service: postgresql-server
      - postgres_user: {{ user }}-user
{% endfor %}

{% endif %}


/etc/consul.d/service-postgresql.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: postgresql
        port: 5432
        tags:
          {% if salt["match.compound"](pillar["roles"]["postgresql-primary"]) %}
          - primary
          {% elif salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}
          - replica
          {% endif %}
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul


{% if salt["match.compound"](pillar["roles"]["postgresql-replica"]) %}

/usr/share/consul-template/templates/recovery.conf:
  file.managed:
    - source: salt://postgresql/server/configs/recovery.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul-template
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


/etc/consul-template.d/postgresql-recovery.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/recovery.conf
        destination: {{ postgresql.recovery_file }}
        command: "chgrp postgres {{ postgresql.recovery_file }} && chmod 640 {{ postgresql.recovery_file }} && service postgresql restart"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template

{% endif %}
