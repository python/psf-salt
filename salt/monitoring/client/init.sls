{% if pillar["dc"] in pillar["consul"]["dcs"] %}
include:
  - .collectors.default

diamond:
  pkg.installed:
    - name: python-diamond

  group.present:
    - system: True

  user.present:
    - shell: /bin/false
    - system: True
    - gid_from_name: True
    - require:
      - group: diamond

  service.running:
    - enable: True
    - watch:
      - file: /etc/diamond/diamond.conf
    - require:
      - pkg: diamond
      - user: diamond
      - cmd: /etc/diamond/handlers/GraphiteHandler.conf


/etc/diamond/diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/diamond.conf.jinja
    - template: jinja
    - context:
        handlers:
          - diamond.handler.graphite.GraphiteHandler
    - user: root
    - group: diamond
    - mode: 640
    - require:
      - pkg: diamond
      - group: diamond


/etc/rsyslog.d/49-diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/rsyslog-diamond.conf
    - user: root
    - group: root
    - mode: 644


/etc/logrotate.d/diamond:
  file.managed:
    - source: salt://monitoring/client/configs/logrotate-diamond.conf
    - user: root
    - group: root
    - mode: 644


/etc/diamond/handlers/GraphiteHandler.conf.tmpl:
  file.managed:
    - source: salt://monitoring/client/configs/GraphiteHandler.conf.jinja
    - template: jinja
    - user: root
    - group: diamond
    - mode: 644
    - require:
      - pkg: diamond

/etc/diamond/handlers/GraphiteHandler.conf:
  cmd.run:
    - name: "consul-template -once -config /etc/consul-template.conf -template '/etc/diamond/handlers/GraphiteHandler.conf.tmpl:/etc/diamond/handlers/GraphiteHandler.conf'"
    - user: root
    - creates: /etc/diamond/handlers/GraphiteHandler.conf
    - require:
      - pkg: diamond
      - file: /etc/consul-template.conf
      - file: /etc/diamond/handlers/GraphiteHandler.conf.tmpl


diamond-consul:
  file.managed:
    - name: /etc/init/diamond-consul.conf
    - source: salt://consul/init/consul-template.conf.jinja
    - template: jinja
    - context:
        templates:
          - "/etc/diamond/handlers/GraphiteHandler.conf.tmpl:/etc/diamond/handlers/GraphiteHandler.conf:service diamond restart"
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
      - service: diamond
    - watch:
      - file: diamond-consul
      - file: /etc/consul-template.conf
      - file: /etc/diamond/handlers/GraphiteHandler.conf.tmpl
{% else %}
diamond:
  service.dead:
    - enable: False

  pkg.purged:
    - name: python-diamond
    - require:
      - service: diamond

  user.absent:
    - require:
      - service: diamond
      - pkg: diamond

  group.absent:
    - require:
      - service: diamond
      - pkg: diamond
      - user: diamond


/etc/diamond:
  file.absent


/etc/rsyslog.d/49-diamond.conf:
  file.absent


/etc/logrotate.d/diamond:
  file.absent


diamond-consul:
  service.dead:
    - enable: False

  file.absent:
    - name: /etc/init/diamond-consul.conf
    - require:
      - service: diamond-consul
{% endif %}
