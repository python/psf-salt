{% set secrets = pillar["speed-web-secrets"] %}

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

mercurial:
  pkg.installed:
    - install_recommends: False

speed-deps:
  pkg.installed:
    - pkgs:
      - python-dev
      - python-virtualenv
      - build-essential
      - libpq-dev

speed-user:
  user.present:
    - name: speed
    - home: /srv/speed/
    - createhome: True

# Fix speed-user umask
/srv/speed/.profile:
  file.managed:
    - source: salt://speed/web/config/bash_profile
    - user: speed
    - group: speed
    - require:
      - user: speed

speed-source:
  git.latest:
    - name: https://github.com/zware/codespeed
    - target: /srv/speed/codespeed/
    - rev: speed.python.org
    - user: speed
    - require:
      - user: speed-user
      - pkg: git

# Clone/update the repo with Salt to try to avoid occasional slow requests
cpython-source:
  hg.latest:
    - name: https://hg.python.org/cpython
    - target: /srv/speed/media/repos/cpython
    - user: speed
    - require:
      - user: speed-user
      - pkg: mercurial

/srv/speed/:
  file.directory:
    - user: speed
    - group: speed
    - mode: 755
    - recurse:
      - user
      - group
      - mode
    - require:
      - user: speed-user

/srv/speed/media/:
  file.directory:
    - user: speed
    - mode: 755
    - require:
      - user: speed-user

/srv/speed/site_media/:
  file.directory:
    - user: speed
    - mode: 755
    - require:
      - user: speed-user

/srv/speed/media/repos/:
  file.directory:
    - user: speed
    - mode: 755
    - require:
      - user: speed-user

/srv/speed/env/:
  virtualenv.managed:
    - user: speed
    - python: /usr/bin/python
    - require:
      - git: speed-source
      - pkg: speed-deps
      - pkg: postgresql-client

speed-requirements:
  cmd.run:
    - user: speed
    - cwd: /srv/speed/codespeed
    - name: /srv/speed/env/bin/pip install -U -r speed_python/requirements.txt

/var/log/speed/:
  file.directory:
    - user: speed
    - group: speed
    - mode: 755

/etc/logrotate.d/speed:
  file.managed:
    - source: salt://speed/web/config/speed.logrotate
    - user: root
    - group: root
    - mode: 644

/usr/share/consul-template/templates/speed_settings.py:
  file.managed:
    - source: salt://speed/web/config/django-settings.py.jinja
    - template: jinja
    - context:
      secret_key: {{ secrets['secret_key'] }}
      server_name: speed.python.org
#      smtp_host: {#{ secrets['smtp']['host'] }#}
#      smtp_user: {#{ secrets['smtp']['user'] }#}
#      smtp_password: {#{ secrets['smtp']['password'] }#}
#      smtp_port: {#{ secrets['smtp']['port'] }#}
#      smtp_tls: {#{ secrets['smtp']['tls'] }#}
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul-template
      - git: speed-source

/etc/consul-template.d/speed.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/speed_settings.py
        destination: /srv/speed/codespeed/speed_python/local_settings.py
        command: "chown speed /srv/speed/codespeed/speed_python/local_settings.py && service speed restart"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template

/etc/init/speed.conf:
  file.managed:
    - source: salt://speed/web/config/speed.upstart.conf.jinja
    - context:
      gunicorn_workers: 4
    - template: jinja
    - user: root
    - group: root
    - mode: 644

/etc/nginx/sites.d/speed.conf:
  file.managed:
    - source: salt://speed/web/config/nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - context:
      server_names: speed.python.org
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params

pre-reload:
  cmd.run:
    - name: /srv/speed/env/bin/python manage.py migrate --noinput && /srv/speed/env/bin/python manage.py collectstatic --noinput
    - user: speed
    - cwd: /srv/speed/codespeed/
    - env:
      - LC_ALL: en_US.UTF8
    - require:
      - virtualenv: /srv/speed/env/
      - cmd: consul-template
    - onchanges:
      - git: speed-source

speed:
  service.running:
    - reload: True
    - require:
      - virtualenv: /srv/speed/env/
      - file: /etc/init/speed.conf
      - file: /var/log/speed/
      - file: /srv/speed/media/
      - locale: us_locale
      - cmd: pre-reload
    - watch:
      - file: /etc/init/speed.conf
      - virtualenv: /srv/speed/env/
      - git: speed-source

/etc/consul.d/service-speed-web.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: speed-web
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul
