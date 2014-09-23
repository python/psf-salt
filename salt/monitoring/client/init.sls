diamond-depends:
  pkg.installed:
    - pkgs:
      - python-configobj
      - python-psutil


diamond:
  pkg.installed:
    - sources:
      - python-diamond: salt://monitoring/client/packages/python-diamond_3.4.421_all.deb
    - require:
      - pkg: diamond-depends

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
      - file: /etc/diamond/handlers/GraphiteHandler.conf
{% for collector in salt["pillar.get"]("diamond:collectors", {}) %}
      - file: /etc/diamond/collectors/{{ collector }}Collector.conf
{% endfor %}
    - require:
      - pkg: diamond
      - user: diamond
      - file: /var/log/diamond


/etc/diamond/diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/diamond.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: diamond


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
    - group: root
    - mode: 644
    - require:
      - pkg: diamond


/etc/diamond/handlers/GraphiteHandler.conf:
  file.managed:
    - source: salt://monitoring/client/configs/GraphiteHandler.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: diamond


{% for collector, config in salt["pillar.get"]("diamond:collectors", {}).items() %}
/etc/diamond/collectors/{{ collector }}Collector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
      collector: {{ config }}
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: diamond
{% endfor %}
