
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

/etc/nginx/sites.d/buildbot-master.conf:
  file.managed:
    - source: salt://buildbot/config/nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - context:
      instance: master
      port: 9000
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params

/etc/consul.d/service-buildbot-master.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: buildbot-master
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul-pkgs

/etc/consul.d/service-buildbot-master-worker.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: buildbot-master-worker
        port: 9020
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul-pkgs
