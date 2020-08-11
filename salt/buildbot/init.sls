
include:
  - nginx
  - postgresql.client

deadsnakes-ppa:
  pkgrepo.managed:
    - ppa: deadsnakes/ppa

buildbot-deps:
  pkg.installed:
    - pkgs:
      - git
      - python3.8-dev
      - python3.8-venv
      - build-essential
      - libpq-dev
    - require:
      - pkgrepo: deadsnakes-ppa

buildbot-user:
  user.present:
    - name: buildbot
    - home: /srv/buildbot/
    - shell: /bin/bash
    - createhome: False

/etc/buildbot:
  file.directory:
    - user: buildbot
    - group: buildbot
    - mode: 750

/srv:
  file.directory:
    - user: buildbot
    - group: buildbot
    - mode: 755

/srv/buildbot:
  git.latest:
    - name: https://github.com/python/buildmaster-config.git
    - rev: new_host_2020-08-11
    - target: /srv/buildbot
    - user: buildbot
    - force_reset: True
    - force_fetch: True
    - require:
      - user: buildbot-user
      - file: /srv
