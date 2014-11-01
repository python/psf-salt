python-ipaddr:
  pkg.installed


python-requests:
  pkg.installed


{% if salt["match.compound"](pillar["roles"]["salt-master"]) %}
/etc/salt/master.d/roles.conf:
  file.managed:
    - source: salt://base/config/salt-roles.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - order: 1


/etc/salt/master.d/aggregate.conf:
  file.managed:
    - contents: "state_aggregate: True\n"
    - user: root
    - group: root
    - mode: 644
    - order: 1


salt-master:
  service.running:
    - enable: True
    - restart: True
    - order: 1
    - watch:
      - file: /etc/salt/master.d/roles.conf
      - file: /etc/salt/master.d/aggregate.conf
{% endif %}


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
