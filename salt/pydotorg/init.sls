{% set config = pillar["pydotorg"] %}

git:
  pkg.installed

pydotorg-deps:
  pkg.installed:
    - pkgs:
      - build-essential
      - libpq-dev
      - libxml2-dev
      - libxslt-dev
      - mercurial
      - python-docutils
      - python-virtualenv
      - python3-dev
      - yui-compressor

pydotorg-user:
  user.present:
    - name: pydotorg
    - home: /srv/pydotorg/
    - createhome: True

pydotorg-source:
  git.latest:
    - name: https://github.com/python/pythondotorg
    - target: /srv/pydotorg/pythondotorg/
    - rev: {{ config["branch"] }}
    - user: pydotorg
    - require:
      - user: pydotorg-user
      - pkg: git

/srv/pydotorg/env/:
  virtualenv.managed:
    - user: pydotorg
    - requirements: /srv/pydotorg/pythondotorg/requirements.txt
    - python: /usr/bin/python3
    - require:
      - git: pydotorg-source
      - pkg: pydotorg-deps
      - pkg: postgresql-client

/srv/pydotorg/pythondotorg/pydotorg/settings/server.py:
  file.managed:
    - source: salt://pydotorg/config/django-settings.py.jinja
    - user: pydotorg
    - group: pydotorg
    - mode: 640
    - template: jinja
    - context:
      type: {{ config["type"] }}
      secret_key: {{ pillar["pydotorg_secret_key"] }}
      db_host: {{ config["db_host"] }}
      es_host: {{ config["es_host"] }}

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
    - context:
      static_files:
        /static: static-root
        /images: static-root/images
        /m: media

/etc/init/pydotorg.conf:
  file.managed:
    - source: salt://pydotorg/config/pydotorg.upstart.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644

pydotorg:
  service.running:
    - reload: True
    - require:
      - virtualenv: /srv/pydotorg/env/
      - file: /etc/init/pydotorg.conf
    - watch:
      - file: /etc/init/pydotorg.conf
      - virtualenv: /srv/pydotorg/env/
      - git: pydotorg-source

check-out-peps:
  cmd.run:
    - name: hg clone https://hg.python.org/peps /srv/pydotorg/peps
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
    - name: make -C /srv/pydotorg/peps update all && /srv/pydotorg/env/bin/python /srv/pydotorg/pythondotorg/manage.py generate_pep_pages --settings pydotorg.settings.server
    - minute: 10
    - require:
      - user: pydotorg-user
