exclude:
  - id: /etc/diamond/collectors/HttpdCollector.conf


hg-deps:
  pkg.installed:
    - pkgs:
      - build-essential
      - python-dev
      - python-pygments
      - gettext
      - python-docutils
      - buildbot

hg-user:
  user.present:
    - name: hg
    - home: /srv/hg
    - shell: /bin/bash
    - groups:
      - hgaccounts
    - require:
      - user: hgaccounts-user

hgaccounts-user:
  user.present:
    - name: hgaccounts
    - home: /srv/hgaccounts

apache2:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-wsgi
  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: apache2
    - watch:
      - file: /etc/apache2/*
      - file: /etc/apache2/sites-available/*

/etc/apache2/ports.conf:
  file.managed:
    - source: salt://hg/config/ports.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2

/etc/apache2/sites-available/hg.conf:
  file.managed:
    - source: salt://hg/config/hg.apache.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2

/etc/apache2/sites-enabled/hg.conf:
  file.symlink:
    - target: ../sites-available/hg.conf
    - user: root
    - group: root
    - mode: 644

/etc/init/irker.conf:
  file.managed:
    - source: salt://hg/config/irker.upstart.conf
    - user: root
    - group: root
    - mode: 644

/etc/logrotate.d/apache2:
  file.managed:
    - source: salt://hg/config/apache.logrotate
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2

reload-upstart:
  module.run:
    - name: cmd.run
    - cmd: initctl reload-configuration
    - onchanges:
      - /etc/init/irker.conf

irker:
  user.present:
    - home: /srv/irker
  service.running:
    - enable: True
    - watch:
      - file: /etc/init/irker.conf
    - require:
      - user: irker
      - file: /etc/init/irker.conf


HttpdCollector-Override:
  file.managed:
    - name: /etc/diamond/collectors/HttpdCollector.conf
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
          urls: "http://localhost:9000/_server-status?auto"
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
