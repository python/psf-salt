{% set secrets = pillar['codespeed-secrets'] %}

include:
  - nginx
  - postgresql.client

codespeed-deps:
  pkg.installed:
    - pkgs:
      - git
      - mercurial
      - python-dev
      - python3-dev
      - python-virtualenv
      - python3-virtualenv
      - build-essential
      - libpq-dev

codespeed-user:
  user.present:
    - name: codespeed
    - home: /srv/codespeed/
    - createhome: True

codespeed-logs:
  file.directory:
    - name: /var/log/codespeed
    - user: codespeed
    - group: codespeed
    - mode: "0755"

/etc/logrotate.d/codespeed:
  file.managed:
    - source: salt://codespeed/config/codespeed.logrotate
    - user: root
    - group: root
    - mode: "0644"

codespeed-socks:
  file.directory:
    - name: /var/run/codespeed
    - user: codespeed
    - group: codespeed
    - mode: "0755"

{% for instance, config in pillar.get('codespeed-instances', {}).items() %}

/srv/codespeed/{{ instance }}:
  file.directory:
    - user: codespeed
    - mode: "0755"

/srv/codespeed/{{ instance }}/data:
  file.directory:
    - user: codespeed
    - mode: "0755"

/srv/codespeed/{{ instance }}/data/media:
  file.directory:
    - user: codespeed
    - group: codespeed
    - dir_mode: "0755"
    - file_mode: "0644"
    - recurse:
      - user
      - group
      - mode

/srv/codespeed/{{ instance }}/data/site_media:
  file.directory:
    - user: codespeed
    - group: codespeed
    - dir_mode: "0755"
    - file_mode: "0644"
    - recurse:
      - user
      - group
      - mode

/srv/codespeed/{{ instance }}/data/repos:
  file.directory:
    - user: codespeed
    - group: codespeed
    - mode: "0755"

codespeed-{{ instance }}-source:
  git.latest:
    - name: {{ config['source'] }}
    - rev: {{ config['source_ref'] }}
    - target: /srv/codespeed/{{ instance }}/src
    - force_reset: True
    - force_fetch: True
    - user: codespeed

{% for repository, repository_config in config.get('clones', {}).get('git', {}).items() %}
codespeed-{{ instance }}-repo-clone-{{ repository }}:
  git.latest:
    - name: {{ repository_config['source'] }}
    - target: /srv/codespeed/{{ instance }}/data/repos/{{ repository }}
    - user: codespeed
{% endfor %}

{% for repository, repository_config in config.get('clones', {}).get('hg', {}).items() %}
codespeed-{{ instance }}-repo-clone-{{ repository }}:
  hg.latest:
    - name: {{ repository_config['source'] }}
    - target: /srv/codespeed/{{ instance }}/data/repos/{{ repository }}
    - user: codespeed
{% endfor %}

codespeed-{{ instance }}-env:
  virtualenv.managed:
    - name: /srv/codespeed/{{ instance }}/env
    - user: codespeed
    - cwd: /srv/codespeed/{{ instance }}/src
    - pip_upgrade: True
    - python: {{ config.get('python_version', 'python2') }}
    - requirements: /srv/codespeed/{{ instance }}/src/deploy-requirements.txt
    - watch:
      - git: codespeed-{{ instance }}-source

{% set db_user_config = pillar['postgresql-users'][config['db_user']] %}
{% set db_cluster_config = pillar['postgresql-clusters'][db_user_config['cluster']] %}

codespeed-{{ instance }}-local_settings:
  file.managed:
    - name: /srv/codespeed/{{ instance }}/src/{{ config.get('module', 'codespeed') }}/local_settings.py
    - source: salt://codespeed/config/django-settings.py.jinja
    - user: codespeed
    - group: codespeed
    - show_changes: False
    - mode: "0640"
    - template: jinja
    - context:
        instance: {{ instance }}
        db_host: {{ db_cluster_config['host'] }}
        db_port: {{ db_cluster_config['port'] }}
        db_name: {{ config['db_user'] }}
        db_user: {{ config['db_user'] }}
        db_pass: {{ db_user_config['password'] }}
        db_cert: /etc/ssl/postgres/{{ db_user_config['cluster'] }}.crt
        server_name: {{ config['hostname'] }}
        secret_key: {{ secrets[instance]['secret_key'] }}
        admin_team_name: {{ config.get('admin_team_name', 'PSF Codespeed Admins') }}
        admin_team_email: {{ config.get('admin_team_email', 'speed@python.org') }}
        server_email: {{ config.get('server_email', '{}@codespeed.pythonhosted.org'.format(instance)) }}
        default_from_email: {{ config.get('default_from_email', 'noreply@codespeed.pythonhosted.org') }}

codespeed-{{ instance }}-pre-reload:
  cmd.run:
    - name: /srv/codespeed/{{ instance }}/env/bin/python manage.py migrate --noinput && /srv/codespeed/{{ instance }}/env/bin/python manage.py collectstatic --noinput
    - runas: codespeed
    - cwd: /srv/codespeed/{{ instance }}/src
    - env:
      - LC_ALL: en_US.UTF8
    - require:
      - virtualenv: codespeed-{{ instance }}-env
    - onchanges:
      - git: codespeed-{{ instance }}-source

/etc/systemd/system/codespeed-{{ instance }}.service:
  file.managed:
    - source: salt://codespeed/config/codespeed.service.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - context:
        instance: {{ instance }}
        wsgi_app: {{ config['wsgi_app'] }}
  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/codespeed-{{ instance }}.service

codespeed-{{ instance }}:
  service.running:
    - reload: True
    - require:
      - cmd: codespeed-{{ instance }}-pre-reload
    - watch_any:
      - file: codespeed-{{ instance }}-local_settings
      - file: /etc/systemd/system/codespeed-{{ instance }}.service
      - virtualenv: codespeed-{{ instance }}-env
      - git: codespeed-{{ instance }}-source

/etc/nginx/sites.d/codespeed-{{ instance }}.conf:
  file.managed:
    - source: salt://codespeed/config/nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - context:
        instance: {{ instance }}
        server_names: {{ config['hostname'] }}
        port: {{ config['port'] }}
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params

/etc/consul.d/service-codespeed-{{ instance }}.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: codespeed-{{ instance }}
        port: {{ config['port'] }}
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

{% endfor %}


