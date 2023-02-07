postgresql-repo:
  pkgrepo.managed:
    - name: "deb http://apt.postgresql.org/pub/repos/apt {{ grains['oscodename'] }}-pgdg main"
    - file: /etc/apt/sources.list.d/postgresql.list
    - key_url: salt://postgresql/base/APT-GPG-KEY-POSTGRESQL
    - order: 2
