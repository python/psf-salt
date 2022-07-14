include:
  - postgresql.client

{% if 'postgres-admin' in pillar %}
{% for user, settings in salt["pillar.get"]("postgresql-users", {}).items() %}
{{ user }}-user:
  postgres_user.present:
    - name: {{ user }}
    - password: {{ settings['password'] }}
    - refresh_password: True
    - db_host: {{ pillar['postgresql-clusters'][settings['cluster']]['host'] }}
    - db_port: {{ pillar['postgresql-clusters'][settings['cluster']]['port'] }}
    - db_user: {{ pillar['postgres-admin'][settings['cluster']]['user'] }}
    - db_password: {{ pillar['postgres-admin'][settings['cluster']]['password'] }}
    - require:
      - pkg: postgresql-client
{% endfor %}

{% for database, settings in pillar.get("postgresql-databases", {}).items() %}
{{ database }}-database:
  postgres_database.present:
    - name: {{ database }}
    - owner: {{ settings['owner'] }}
    - db_host: {{ pillar['postgresql-clusters'][settings['cluster']]['host'] }}
    - db_port: {{ pillar['postgresql-clusters'][settings['cluster']]['port'] }}
    - db_user: {{ pillar['postgres-admin'][settings['cluster']]['user'] }}
    - db_password: {{ pillar['postgres-admin'][settings['cluster']]['password'] }}
    - require:
      - pkg: postgresql-client
      - postgres_user: {{ settings['owner'] }}-user
{% endfor %}
{% endif %}
