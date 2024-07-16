{% if grains["oscodename"] in ["jammy", "noble"] %}
postgresql-key:
  file.managed:
    - name: /etc/apt/keyrings/postgresql.asc
    - mode: "0644"
    - source: salt://postgresql/base/APT-GPG-KEY-POSTGRESQL

postgresql-repo:
  pkgrepo.managed:
    - name: "deb [signed-by=/etc/apt/keyrings/postgresql.asc arch={{ grains["osarch"] }}] https://apt.postgresql.org/pub/repos/apt {{ grains['oscodename'] }}-pgdg main"
    - aptkey: False
    - require:
      - file: postgresql-key
    - file: /etc/apt/sources.list.d/postgresql.list
{% else %}
postgresql-repo:
  pkgrepo.managed:
    - name: "deb http://apt.postgresql.org/pub/repos/apt {{ grains['oscodename'] }}-pgdg main"
    - key_url: salt://postgresql/base/APT-GPG-KEY-POSTGRESQL
    - file: /etc/apt/sources.list.d/postgresql.list
{% endif %}
