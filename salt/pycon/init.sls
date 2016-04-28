{% set config = pillar["pycon"] %}
{% set secrets = pillar["pycon-secrets"] %}

include:
  - nginx
  - postgresql.client

us_locale:
  locale.present:
    - name: en_US.UTF-8

default_locale:
  locale.system:
    - name: en_US.UTF-8
    - require:
      - locale: us_locale

git:
  pkg.installed

pycon-deps:
  pkg.installed:
    - pkgs:
      - python-dev
      - python-virtualenv
      - build-essential
      - libpq-dev
      - libjpeg8-dev
      - node-less
      - redis-server

pycon-redis:
  service.running:
    - name: redis-server
    - require:
      - pkg: pycon-deps

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

pycon-archive:
  git.latest:
    - name: https://github.com/python/pycon-archive
    - target: /srv/pycon-archive/
    - rev: master
    - user: root
    - require:
      - pkg: git

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

/srv/pycon/site_media/:
  file.directory:
    - user: pycon
    - mode: 755
    - require:
      - user: pycon-user

/srv/pycon/env/:
  virtualenv.managed:
    - user: pycon
    - python: /usr/bin/python
    - require:
      - git: pycon-source
      - pkg: pycon-deps
      - pkg: postgresql-client

pycon-requirements:
  cmd.run:
    - user: pycon
    - cwd: /srv/pycon/pycon
    - name: /srv/pycon/env/bin/pip install -U -r requirements/project.txt

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

/usr/share/consul-template/templates/pycon_settings.py:
  file.managed:
    - source: salt://pycon/config/django-settings.py.jinja
    - template: jinja
    - context:
      deployment: {{ config['deployment'] }}
      graylog_host: {{ secrets['graylog_host'] }}
      secret_key: {{ secrets['secret_key'] }}
      google_oauth2_client_id: {{ secrets['google_oauth2']['client_id'] }}
      google_oauth2_client_secret: {{ secrets['google_oauth2']['client_secret'] }}
      server_names: {{ config['server_names'] }}
      smtp_host: {{ secrets['smtp']['host'] }}
      smtp_user: {{ secrets['smtp']['user'] }}
      smtp_password: {{ secrets['smtp']['password'] }}
      smtp_port: {{ secrets['smtp']['port'] }}
      smtp_tls: {{ secrets['smtp']['tls'] }}
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul-template
      - git: pycon-source

/etc/consul-template.d/pycon.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/pycon_settings.py
        destination: /srv/pycon/pycon/pycon/settings/local.py
        command: "chown pycon /srv/pycon/pycon/pycon/settings/local.py && service pycon restart"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template

/etc/init/pycon.conf:
  file.managed:
    - source: salt://pycon/config/pycon.upstart.conf.jinja
    - context:
      sentry_dsn: {{ secrets['sentry_dsn'] }}
      gunicorn_workers: {{ config['gunicorn_workers'] }}
    - template: jinja
    - user: root
    - group: root
    - mode: 644

/etc/init/pycon_worker.conf:
  file.managed:
    - source: salt://pycon/config/pycon_worker.upstart.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644

/srv/pycon/htpasswd:
  file.managed:
    - source: salt://pycon/config/htpasswd
    - user: root
    - group: root
    - mode: 644
    - require:
      - user: pycon-user

/srv/pycon/pycon-slides-htpasswd:
  file.managed:
    - source: salt://pycon/config/pycon-slides-htpasswd
    - user: root
    - group: root
    - mode: 644
    - require:
      - user: pycon-user

/etc/nginx/sites.d/pycon.conf:
  file.managed:
    - source: salt://pycon/config/pycon.nginx.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - context:
      server_names: {{ config['server_names']|join(' ') }}
      use_basic_auth: {{ config['use_basic_auth'] }}
      auth_file: /srv/pycon/htpasswd
      pycon_slides_auth_file: /srv/pycon/pycon-slides-htpasswd
      deployment: {{ config["deployment"] }}
    - require:
      - file: /etc/nginx/sites.d/
      - file: /srv/pycon/htpasswd

pre-reload:
  cmd.run:
    - name: /srv/pycon/env/bin/python manage.py migrate --noinput && /srv/pycon/env/bin/python manage.py compress --force && /srv/pycon/env/bin/python manage.py collectstatic -v0 --noinput
    - user: pycon
    - cwd: /srv/pycon/pycon/
    - env:
      - LC_ALL: en_US.UTF8
    - require:
      - virtualenv: /srv/pycon/env/
      - cmd: consul-template
    - onchanges:
      - git: pycon-source

pycon-crontab:
  file.managed:
    - name: /etc/cron.d/pycon
    - user: root
    - group: root
    - mode: 644
    - contents: |
        0  0  *  *  *	pycon /srv/pycon/env/bin/python /srv/pycon/pycon/manage.py expunge_deleted > /var/log/pycon/cron_expunge_deleted.log 2>&1
        0 20  *  *  *	pycon /srv/pycon/env/bin/python /srv/pycon/pycon/manage.py update_tutorial_registrants > /var/log/pycon/cron_update_tutorial_registrants 2>&1

pycon:
  service.running:
    - reload: True
    - require:
      - virtualenv: /srv/pycon/env/
      - file: /etc/init/pycon.conf
      - file: /var/log/pycon/
      - file: /srv/pycon/media/
      - locale: us_locale
      - cmd: pre-reload
    - watch:
      - file: /etc/init/pycon.conf
      - virtualenv: /srv/pycon/env/
      - git: pycon-source

pycon_worker:
  service.running:
    - require:
      - virtualenv: /srv/pycon/env/
      - file: /etc/init/pycon_worker.conf
      - file: /var/log/pycon/
      - file: /srv/pycon/media/
      - locale: us_locale
      - cmd: pre-reload
    - watch:
      - file: /etc/init/pycon_worker.conf
      - virtualenv: /srv/pycon/env/
      - git: pycon-source

/etc/consul.d/service-pycon.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: pycon-{{ config["deployment"] }}
        port: 443
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

pycon-slides-user:
  user.present:
    - name: pycon-slides
    - home: /srv/pycon-slides/
    - createhome: True

pycon-slides-source:
  git.latest:
    - name: https://github.com/bcostlow/pycon-slides
    - target: /srv/pycon-slides/pycon-slides/
    - rev: master
    - user: pycon-slides
    - require:
      - user: pycon-slides-user
      - pkg: git

pycon-slides-environ-placeholder:
  file.touch:
    - name: /srv/pycon-slides/pycon-slides/.environ

/srv/pycon-slides/env/:
  virtualenv.managed:
    - user: pycon-slides
    - python: /usr/bin/python
    - require:
      - git: pycon-slides-source

pycon-slides-requirements:
  cmd.run:
    - user: pycon-slides
    - cwd: /srv/pycon-slides/pycon-slides
    - name: /srv/pycon-slides/env/bin/pip install -U -r requirements.txt

/etc/init/pycon-slides.conf:
  file.managed:
    - source: salt://pycon/config/pycon-slides.upstart.conf.jinja
    - context:
      mail_from_addr: {{ secrets['pycon-slides']['mail_from_addr'] }}
      mail_recipients: {{ secrets['pycon-slides']['mail_recipients'] }}
      dropbox_access_token: {{ secrets['pycon-slides']['dropbox_access_token'] }}
      smtp_host: {{ secrets['smtp']['host'] }}
      smtp_user: {{ secrets['smtp']['user'] }}
      smtp_password: {{ secrets['smtp']['password'] }}
      smtp_port: {{ secrets['smtp']['port'] }}
      smtp_tls: {{ secrets['smtp']['tls'] }}
    - template: jinja
    - user: root
    - group: root
    - mode: 640

pycon-slides:
  service.running:
    - reload: True
    - require:
      - virtualenv: /srv/pycon-slides/env/
      - file: /etc/init/pycon-slides.conf
      - locale: us_locale
    - watch:
      - file: /etc/init/pycon-slides.conf
      - virtualenv: /srv/pycon-slides/env/
      - git: pycon-slides-source
