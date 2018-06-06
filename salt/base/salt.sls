python-requests:
  pkg.latest

python-msgpack:
  pkg.latest

{% if grains["os"] == "Ubuntu" %}
salt-2018.3:
  pkgrepo.managed:
    - humanname: repo.saltstack.org
    - name: deb http://repo.saltstack.com/apt/ubuntu/{{ grains["osrelease"] }}/{{ grains["osarch"] }}/2018.3 {{ grains["oscodename"] }} main
    - file: /etc/apt/sources.list.d/saltstack.list
    - key_url: https://repo.saltstack.com/apt/ubuntu/14.04/amd64/2018.3/SALTSTACK-GPG-KEY.pub
{% endif %}


{% if salt["match.compound"](pillar["roles"]["salt-master"]) %}
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
