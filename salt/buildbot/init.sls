
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
      - python3.9-dev
      - python3.9-venv
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
    - mode: "0750"

/srv:
  file.directory:
    - user: buildbot
    - group: buildbot
    - mode: "0755"

/srv/buildbot:
  git.latest:
    - name: https://github.com/python/buildmaster-config.git
    - rev: main
    - target: /srv/buildbot
    - user: buildbot
    - force_reset: True
    - force_fetch: True
    - require:
      - user: buildbot-user
      - file: /srv

update-master:
  cmd.run:
    - runas: buildbot
    - cwd: /srv/buildbot
    - name: make update-master
    - require:
      - git: /srv/buildbot
    - onchanges:
      - git: /srv/buildbot

/srv/buildbot/buildbot.sh start -q /srv/buildbot/master:
  cron.present:
    - identifier: START_BUILDBOT
    - user: buildbot
    - special: '@reboot'

find /data/www/buildbot/daily-dmg -type f -mtime +14 -exec rm {} \;:
  cron.present:
    - identifier: DAILY_CLEAN_BUILDBOT_DMG
    - user: buildbot
    - special: '@daily'

find /data/www/buildbot/test-results -type f -mtime +7 -exec rm {} \;:
  cron.present:
    - identifier: DAILY_CLEAN_BUILDBOT_TEST_RESULTS
    - user: buildbot
    - special: '@daily'

/etc/nginx/sites.d/buildbot-master.conf:
  file.managed:
    - source: salt://buildbot/config/nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
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
    - mode: "0644"
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
    - mode: "0644"
    - require:
      - pkg: consul-pkgs
