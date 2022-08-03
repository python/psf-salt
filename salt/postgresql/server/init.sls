{% set postgresql = salt["pillar.get"]("postgresql", {}) %}
{% set data_partitions = [] %}

{% if salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}
{% set postgresql_primary = (salt["mine.get"](pillar["roles"]["postgresql-primary"]["pattern"], "psf_internal").items()|sort()|first)[1]|first %}
{% endif %}

{% if data_partitions|length() > 1 %}
This Does Not Support Multi Data Disk Servers!!!!
{% endif %}

include:
  - postgresql.base
{% if salt["match.compound"](pillar["roles"]["postgresql-primary"]["pattern"]) %}
  - postgresql.server.wal-e
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
    - name: /srv/postgresql/11
    - user: root
    - group: root
    - mode: "0777"
{% if data_partitions %}
    - require:
      - mount: postgresql-data
{% else %}
    - makedirs: True
{% endif %}


postgresql-server:
  pkg.installed:
    - pkgs:
      - postgresql-11

  cmd.run:
    - name: pg_dropcluster --stop 11 main
    - onlyif: pg_lsclusters | grep '^11\s\+main\s\+'
    - require:
      - pkg: postgresql-server

  service.running:
    - name: postgresql
    - restart: True
    - enable: True
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}/conf.d
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}
      - cmd: consul-template
      {% endif %}
    - watch:
      - file: {{ postgresql.config_file }}
      - file: {{ postgresql.ident_file }}
      - file: {{ postgresql.hba_file }}
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}
      - file: /etc/ssl/certs/PSF_CA.pem
      {% endif %}


postgresql-psf-cluster:
  cmd.run:
    {% if salt["match.compound"](pillar["roles"]["postgresql-primary"]["pattern"]) %}
    - name: pg_createcluster --datadir {{ postgresql.data_dir }} --locale en_US.UTF-8 11 --port {{ postgresql.port }} psf
    {% else %}
    - name: pg_basebackup -h {{ postgresql_primary }} -p {{ postgresql.port }} --pgdata {{ postgresql.data_dir }} -U replicator
    - env:
      - PGHOST: postgresql.psf.io
      - PGHOSTADDR: {{ postgresql_primary }}
      - PGPORT: "{{ postgresql.port }}"
      - PGSSLMODE: verify-ca
      - PGSSLROOTCERT: /etc/ssl/certs/PSF_CA.pem
      - PGPASSWORD: {{ pillar["postgresql-users"]["replicator"] }}
    - runas: postgres
    {% endif %}
    - unless: pg_lsclusters | grep '^11\s\+psf\s\+'
    - require:
      - pkg: postgresql-server
      - file: postgresql-data
      {% if salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}
      - file: /etc/ssl/certs/PSF_CA.pem
      - file: /etc/consul.d/service-postgresql.json
      - service: consul
      {% endif %}


# Make sure that our log directory is writeable
/var/log/postgresql:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: "0755"

# Make sure that our log file is writeable
/var/log/postgresql/postgresql-11-psf.log:
  file.managed:
    - user: postgres
    - group: postgres
    - mode: "0640"
    - replace: False


{{ postgresql.config_dir }}:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: "0755"
    - makedirs: True
    - require:
      - cmd: postgresql-psf-cluster


{{ postgresql.config_dir }}/conf.d:
  file.directory:
    - user: postgres
    - group: postgres
    - mode: "0755"
    - makedirs: True
    - require:
      - file: {{ postgresql.config_dir }}


{{ postgresql.hba_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/pg_hba.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0640"
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{{ postgresql.config_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/postgresql.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0640"
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{{ postgresql.ident_file }}:
  file.managed:
    - source: salt://postgresql/server/configs/pg_ident.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0640"
    - require:
      - cmd: postgresql-psf-cluster
      - file: {{ postgresql.config_dir }}


{% if salt["match.compound"](pillar["roles"]["postgresql-primary"]["pattern"]) %}

{% for hostname in salt["mine.get"](pillar["roles"]["postgresql"]["pattern"], "psf_internal") %}
{% if hostname != grains["fqdn"] %}
replication-slot-{{ hostname.split(".")|first }}:
  postgres_replica.slot:
    - name: {{ hostname.split(".")|first|replace('-', '_') }}
    - require:
      - service: postgresql-server
{% endif %}
{% endfor %}

replicator:
  postgres_user.present:
    - replication: True
    - password: {{ pillar["postgresql-replicator"] }}
    - require:
      - service: postgresql-server

{% for user, config in salt["pillar.get"]("postgresql-superusers", {}).items() %}
{{ user }}-superuser:
  postgres_user.present:
    - name: {{ user }}
    - superuser: True
    - password: {{ config.password }}
    - require:
      - service: postgresql-server
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
          {% if salt["match.compound"](pillar["roles"]["postgresql-primary"]["pattern"]) %}
          - primary
          {% elif salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}
          - replica
          {% endif %}
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs


{% if salt["match.compound"](pillar["roles"]["postgresql-replica"]["pattern"]) %}

/usr/share/consul-template/templates/recovery.conf:
  file.managed:
    - source: salt://postgresql/server/configs/recovery.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: "0640"
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
    - mode: "0640"
    - require:
      - pkg: consul-template

{% endif %}
