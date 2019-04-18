python-requests:
  pkg.latest

python-msgpack:
  pkg.latest

python3-pip:
  pkg.latest

{% if grains["os"] == "Ubuntu" %}
salt-2018.3:
  pkgrepo.managed:
    - humanname: repo.saltstack.org
    {% if grains["oscodename"] == "trusty" %}
    - name: deb http://repo.saltstack.com/apt/ubuntu/{{ grains["osrelease"] }}/{{ grains["osarch"] }}/2018.3 {{ grains["oscodename"] }} main
    {% else %}
    - name: deb http://repo.saltstack.com/py3/ubuntu/{{ grains["osrelease"] }}/{{ grains["osarch"] }}/2018.3 {{ grains["oscodename"] }} main
    {% endif %}
    - file: /etc/apt/sources.list.d/saltstack.list
    - key_url: https://repo.saltstack.com/py3/ubuntu/18.04/amd64/2018.3/SALTSTACK-GPG-KEY.pub
{% endif %}


{% if salt["match.compound"](pillar["roles"]["salt-master"]) %}
include:
  - tls.lego
  - nginx

salt-master-pkg:
  pkg.latest:
    - name: salt-master

/etc/salt/master.d/roles.conf:
  file.managed:
    - source: salt://base/config/salt-roles.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - order: last


salt-master:
  service.running:
    - enable: True
    - restart: True
    - order: last
    - watch:
      - file: /etc/salt/master.d/roles.conf
{% endif %}

salt-minion-pkg:
  pkg.latest:
    - name: salt-minion

/etc/salt/minion.d/mine.conf:
  file.managed:
    - contents: "mine_interval: 5"
    - user: root
    - group: root
    - mode: 640

salt-minion:
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/salt/minion.d/mine.conf

{% if 'postgres-admin' in pillar %}
{% set postgresql = salt["pillar.get"]("postgresql", {}) %}
{% for user, settings in salt["pillar.get"]("postgresql-users", {}).items() %}
{{ user }}-user:
  postgres_user.present:
    - name: {{ user }}
    - password: {{ settings['password'] }}
    - refresh_password: True
    - db_host: {{ pillar['postgres-clusters'][settings['cluster']]['host'] }}
    - db_port: {{ pillar['postgres-clusters'][settings['cluster']]['port'] }}
    - db_user: {{ pillar['postgres-admin'][settings['cluster']]['user'] }}
    - db_password: {{ pillar['postgres-admin'][settings['cluster']]['password'] }}
{% endfor %}

{% for database, settings in postgresql.get("databases", {}).items() %}
{{ database }}-database:
  postgres_database.present:
    - name: {{ database }}
    - owner: {{ settings['owner'] }}
    - db_host: {{ pillar['postgres-clusters'][settings['cluster']]['host'] }}
    - db_port: {{ pillar['postgres-clusters'][settings['cluster']]['port'] }}
    - db_user: {{ pillar['postgres-admin'][settings['cluster']]['user'] }}
    - db_password: {{ pillar['postgres-admin'][settings['cluster']]['password'] }}
    - require:
      - postgres_user: {{ settings['owner'] }}-user
{% endfor %}

/etc/nginx/sites.d/letsencrypt-well-known.conf:
  file.managed:
    - source: salt://base/config/letsencrypt-well-known-nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: tls.lego

/etc/consul.d/service-letsencrypt-well-known.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: letsencrypt-well-known
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul-pkgs
{% endif %}
