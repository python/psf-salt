{% set config = pillar["pycon"] %}

include:
  - nginx
  - postgresql.client

git:
  pkg.installed

pycon-deps:
  pkg.installed:
    - pkgs:
      - python-virtualenv
      - build-essential
      - libpq-dev
      - libjpeg8-dev
      - node-less

pycon-user:
  user.present:
    - name: pycon
    - home: /srv/pycon/
    - createhome: True

# Fix pycon-user umask
/srv/pycon/.profile:
  file.managed:
    - source: salt://pycon/config/bash_profile
    - user: pycon
    - group: pycon
    - require:
      - user: pycon

pycon-source:
  git.latest:
    - name: https://github.com/pycon/pycon
    - target: /srv/pycon/pycon/
    - rev: {{ config["branch"] }}
    - user: pycon
    - require:
      - user: pycon-user
      - pkg: git

/srv/pycon/media/:
  file.directory:
    - user: pycon
    - mode: 755
    - require:
      - user: pycon-user

/srv/pycon/env/:
  virtualenv.managed:
    - user: pycon
    - requirements: /srv/pycon/requirements/project.txt
    - python: /usr/bin/python
    - require:
      - git: pycon-source
      - pkg: pycon-deps
      - pkg: postgresql-client

/var/log/pycon/:
  file.directory:
    - user: pycon
    - group: pycon
    - mode: 755

/etc/logrotate.d/pycon:
  file.managed:
    - source: salt://pycon/config/pycon.logrotate
    - user: root
    - group: root
    - mode: 644
