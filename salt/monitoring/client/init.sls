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
      - file: /etc/diamond/handlers/ArchiveHandler.conf
    - require:
      - pkg: diamond
      - user: diamond
      - file: /var/log/diamond
      - cmd: /etc/diamond/handlers/GraphiteHandler.conf


/etc/diamond/diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/diamond.conf.jinja
    - template: jinja
    - context:
        handlers:
          - diamond.handler.archive.ArchiveHandler
          - diamond.handler.graphite.GraphiteHandler
    - user: root
    - group: diamond
    - mode: 640
    - require:
      - pkg: diamond
      - group: diamond


/var/log/diamond:
  file.directory:
    - user: root
    - group: diamond
    - mode: 770
    - require:
      - pkg: diamond


/etc/diamond/handlers/ArchiveHandler.conf:
  file.managed:
    - source: salt://monitoring/client/configs/ArchiveHandler.conf
    - user: root
    - group: diamond
    - mode: 640
    - require:
      - pkg: diamond


/etc/diamond/handlers/GraphiteHandler.conf.tmpl:
  file.managed:
    - source: salt://monitoring/client/configs/GraphiteHandler.conf.jinja
    - template: jinja
    - user: root
    - group: diamond
    - mode: 640
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
          - "/etc/diamond/handlers/GraphiteHandler.conf.tmpl:/etc/diamond/handlers/GraphiteHandler.conf:"
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
