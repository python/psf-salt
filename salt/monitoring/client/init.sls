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
      - cmd: consul-template
      {% if grains["oscodename"] == "xenial" %}
      - file: /lib/systemd/system/diamond.service
      {% else %}
      - cmd: /etc/init/diamond.conf
      {% endif %}


{% if grains["oscodename"] == "xenial" %}
/etc/init/diamond.conf:
  file.absent: []

/lib/systemd/system/diamond.service:
  file.managed:
    - name: /lib/systemd/system/diamond.service
    - source: salt://monitoring/client/configs/diamond.service

  cmd.wait:
    - name: systemctl daemon-reload
    - watch:
      - file: /lib/systemd/system/diamond.service
{% else %}
/etc/init/diamond.conf:
  cmd.run:
    - name: "ln -s /etc/init/diamond.upstart /etc/init/diamond.conf && initctl reload-configuration"
    - creates: /etc/init/diamond.conf
    - requires:
        - pkg: diamong
{% endif %}


/etc/diamond:
  file.directory:
    - user: root
    - group: diamond
    - mode: 750
    - require:
      - pkg: diamond
      - group: diamond


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
      - file: /etc/diamond


/etc/diamond/collectors:
  file.directory:
    - user: root
    - group: diamond
    - mode: 750
    - makedirs: True
    - require:
      - pkg: diamond
      - file: /etc/diamond


/etc/diamond/handlers:
  file.directory:
    - user: root
    - group: diamond
    - mode: 750
    - makedirs: True
    - require:
      - pkg: diamond
      - file: /etc/diamond


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


/usr/share/consul-template/templates/GraphiteHandler.conf:
  file.managed:
    - source: salt://monitoring/client/configs/GraphiteHandler.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template


/etc/consul-template.d/diamond.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/GraphiteHandler.conf
        destination: /etc/diamond/handlers/GraphiteHandler.conf
        command: service diamond restart
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template

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


/usr/share/consul-template/templates/GraphiteHandler.conf:
  file.absent


/etc/consul-template.d/diamond.json:
  file.absent


{% endif %}
