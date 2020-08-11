include:
  - postgresql.base

postgresql-client:
  pkg.installed:
    - pkgs:
      - postgresql-client-9.4
      - python-psycopg2
      - python3-psycopg2

/etc/ssl/postgres:
  file.directory:
    - user: root
    - group: root
    - mode: 755

{% for postgres_cluster, config in pillar.get('postgresql-clusters', {}).items() %}
{% if 'ca_cert' in config %}
/etc/ssl/postgres/{{ postgres_cluster }}.crt:
  file.managed:
    - contents_pillar: postgresql-clusters:{{ postgres_cluster }}:ca_cert
    - user: root
    - group: root
    - mode: 644
{% endif %}
{% endfor %}

/etc/ssl/postgres/root-certs.crt:
  file.managed:
    - source: salt://postgresql/client/root-certs.crt.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
