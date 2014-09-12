hg-deps:
  pkg.installed:
    - pkgs:
      - build-essential
      - python-dev
      - python-pygments
      - gettext
      - mercurial
      - python-docutils
      - buildbot

hg-user:
  user.present:
    - name: hg
    - home: /srv/hg
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
