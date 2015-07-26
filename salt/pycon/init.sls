{% set config = pillar["pycon"] %}
{% set secrets = pillar["pycon-secrets"] %}

include:
  - nginx
  - postgresql.client

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
    - python: /usr/bin/python
    - require:
      - git: pycon-source
      - pkg: pycon-deps
      - pkg: postgresql-client

pycon-requirements:
  cmd.run:
    - user: pycon
    - cwd: /srv/pycon/pycon
    - name: /srv/pycon/env/bin/pip install -r requirements/project.txt

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
        destination: /srv/pycon/pycon/settings/local.py
        command: "chown pycon /srv/pycon/pycon/settings/local.py"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template
