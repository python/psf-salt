{% set graphite_servers = (salt["mine.get"]("roles:monitoring", "minealiases.psf_internal", expr_form="grain").values()) %}

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
      - file: /etc/diamond/handlers/GraphiteHandler.conf
    - require:
      - pkg: diamond
      - user: diamond
      - file: /var/log/diamond


/etc/diamond/diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/diamond.conf.jinja
    - template: jinja
    - context:
        handlers:
          - diamond.handler.archive.ArchiveHandler
          {% if graphite_servers %}
          - diamond.handler.graphite.GraphiteHandler
          {% endif %}
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


/etc/diamond/handlers/GraphiteHandler.conf:
{% if graphite_servers %}
  file.managed:
    - source: salt://monitoring/client/configs/GraphiteHandler.conf.jinja
    - template: jinja
    - context:
        servers: {{ graphite_servers }}
    - user: root
    - group: diamond
    - mode: 640
    - require:
      - pkg: diamond
{% else %}
  file.absent
{% endif %}
