{% set config = pillar["pydotorg"] %}

include:
  - nginx
  - postgresql.client

git:
  pkg.installed

pydotorg-deps:
  pkg.installed:
    - pkgs:
      - build-essential
      - git
      - libpq-dev
      - libxml2-dev
      - libxslt-dev
      - python-docutils
      - python-virtualenv
      - python3-dev
      - yui-compressor

pydotorg-user:
  user.present:
    - name: pydotorg
    - home: /srv/pydotorg/
    - createhome: True

# Fix pydotorg-user umask
/srv/pydotorg/.profile:
  file.managed:
    - source: salt://pydotorg/config/bash_profile
    - user: pydotorg
    - group: pydotorg
    - require:
      - user: pydotorg

pydotorg-source:
  git.latest:
    - name: https://github.com/python/pythondotorg
    - target: /srv/pydotorg/pythondotorg/
    - rev: {{ config["branch"] }}
    - user: pydotorg
    - require:
      - user: pydotorg-user
      - pkg: git

/srv/pydotorg/media/:
  file.directory:
    - user: pydotorg
    - mode: 755
    - require:
      - user: pydotorg-user

/srv/pydotorg/media/fixtures/:
  file.directory:
    - user: pydotorg
    - mode: 755
    - require:
      - user: pydotorg-user

/srv/pydotorg/pythondotorg/media:
  file.symlink:
    - target: /srv/pydotorg/media/
    - user: pydotorg
    - mode: 644
    - require:
      - file: /srv/pydotorg/media/

/srv/pydotorg/env/:
  virtualenv.managed:
    - user: pydotorg
    - requirements: /srv/pydotorg/pythondotorg/requirements.txt
    - python: /usr/bin/python3
    - require:
      - git: pydotorg-source
      - pkg: pydotorg-deps
      - pkg: postgresql-client


/usr/share/consul-template/templates/pydotorg_settings.py:
  file.managed:
    - source: salt://pydotorg/config/django-settings.py.jinja
    - template: jinja
    - context:
        name: {{ config["name"] }}
        type: {{ config["type"] }}
        secret_key: {{ pillar["pydotorg_secret_key"] }}
        sentry_dsn: {{ pillar.get("sentry", {}).get("dsn") }}
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul-template
      - git: pydotorg-source


/etc/consul-template.d/pydotorg.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/pydotorg_settings.py
        destination: /srv/pydotorg/pythondotorg/pydotorg/settings/server.py
        command: "chown pydotorg /srv/pydotorg/pythondotorg/pydotorg/settings/server.py && service pydotorg restart"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template
      - file: /etc/init/pydotorg.conf


/srv/pydotorg/pydotorg-uwsgi.ini:
  file.managed:
    - source: salt://pydotorg/config/pydotorg-uwsgi.ini.jinja
    - user: pydotorg
    - group: pydotorg
    - mode: 640
    - template: jinja
    - require:
      - user: pydotorg-user

/etc/nginx/sites.d/pydotorg.conf:
  file.managed:
    - source: salt://pydotorg/config/pydotorg.nginx.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/

/etc/init/pydotorg.conf:
  file.managed:
    - source: salt://pydotorg/config/pydotorg.upstart.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644

/var/log/pydotorg/:
  file.directory:
    - user: pydotorg
    - group: pydotorg
    - mode: 755

/etc/logrotate.d/pydotorg:
  file.managed:
    - source: salt://pydotorg/config/pydotorg.logrotate
    - user: root
    - group: root
    - mode: 644

/etc/consul.d/service-pydotorg.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: pydotorg-{{ config["name"] }}
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

pre-reload:
  cmd.run:
    - name: /srv/pydotorg/env/bin/python3 manage.py migrate --settings pydotorg.settings.server --noinput && /srv/pydotorg/env/bin/python3 manage.py collectstatic --settings pydotorg.settings.server -v0 --noinput
    - user: pydotorg
    - cwd: /srv/pydotorg/pythondotorg/
    - env:
      - LC_ALL: en_US.UTF8
    - require:
      - virtualenv: /srv/pydotorg/env/
      - cmd: consul-template
    - onchanges:
      - git: pydotorg-source

tweak-maxconn:
  sysctl.present:
    - name: net.core.somaxconn
    - value: 1024

pydotorg:
  service.running:
    - reload: True
    - require:
      - virtualenv: /srv/pydotorg/env/
      - file: /etc/init/pydotorg.conf
      - file: /srv/pydotorg/pydotorg-uwsgi.ini
      - file: /var/log/pydotorg/
      - file: /srv/pydotorg/pythondotorg/media
      - cmd: pre-reload
      - sysctl: tweak-maxconn
    - watch:
      - file: /etc/init/pydotorg.conf
      - file: /srv/pydotorg/pydotorg-uwsgi.ini
      - virtualenv: /srv/pydotorg/env/
      - git: pydotorg-source

check-out-peps:
  cmd.run:
    - name: git clone https://github.com/python/peps.git /srv/pydotorg/peps
    - user: pydotorg
    - creates: /srv/pydotorg/peps
    - require:
      - user: pydotorg-user
      - pkg: pydotorg-deps

blog-feeds-cron:
  cron.present:
    - identifier: import-blog-feeds
    - name: /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py update_blogs --settings pydotorg.settings.server
    - user: pydotorg
    - minute: 13
    - require:
      - user: pydotorg-user

ics-events-cron:
  cron.present:
    - identifier: import-ics-events
    - name: /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py import_ics_calendars --settings pydotorg.settings.server
    - user: pydotorg
    - minute: 17
    - require:
      - user: pydotorg-user

update-es-index-cron:
  cron.present:
    - identifier: update-es-index
    - name: /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py rebuild_index --settings pydotorg.settings.server --noinput
    - user: pydotorg
    - hour: 2
    - minute: 0
    - require:
      - user: pydotorg-user

update-peps-cron:
  cron.present:
    - identifier: update-peps
    - user: pydotorg
    - name: make -C /srv/pydotorg/peps update all rss && /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py generate_pep_pages --settings pydotorg.settings.server
    - minute: '*/15'
    - require:
      - user: pydotorg-user

update-dev-fixtures-cron:
  cron.present:
    - identifier: update-dev-fixtures
    - name: /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py generate_dev_fixtures --file=/srv/pydotorg/media/fixtures/dev-fixtures.json.gz --settings=pydotorg.settings.server
    - user: pydotorg
    - hour: 1
    - minute: 0
    - require:
      - user: pydotorg-user
