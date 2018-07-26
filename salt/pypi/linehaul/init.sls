deadsnakes-ppa:
  pkgrepo.managed:
    - ppa: fkrull/deadsnakes

linehaul:
  pkg.installed:
    - pkgs:
      - git
      - virtualenv
      - gcc
      - python3.6-dev
      - python-pip
      - python3.6-pip
      - libffi-dev
      - libssl-dev
    - require:
      - pkgrepo: deadsnakes-ppa

  user.present:
    - name: linehaul
    - home: /srv/linehaul/
    - createhome: True
    - groups:
      - ssl-cert

  git.latest:
    - name: https://github.com/pypa/linehaul.git
    - target: /srv/linehaul/src
    - rev: trio
    - branch: trio
    - force_reset: True
    - user: linehaul
    - require:
      - pkg: linehaul
      - user: linehaul

  virtualenv.managed:
    - name: /srv/linehaul/env/
    - user: linehaul
    - requirements: /srv/linehaul/src/requirements/main.txt
    - python: /usr/bin/python3.6
    - require:
      - git: linehaul
      - user: linehaul
      - pkg: linehaul

  pip.installed:
    - name: /srv/linehaul/src/
    - user: linehaul
    - bin_env: /srv/linehaul/env
    - require:
      - virtualenv: linehaul
    - watch:
      - git: linehaul

  service.running:
    - enable: True
    - require:
      - pip: linehaul
      - file: /var/log/linehaul
    - watch:
      - file: /etc/systemd/system/linehaul.service
      - file: /etc/ssl/private/linehaul.psf.io.pem
      - file: /srv/linehaul/etc/bigquery.json
      - file: /srv/linehaul/etc/linehaul.env
      - git: linehaul


/srv/linehaul/etc/linehaul.env:
  file.managed:
    - source: salt://pypi/linehaul/linehaul.env.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - makedirs: True
    - show_diff: False
    - require:
      - user: linehaul


/etc/systemd/system/linehaul.service:
  file.managed:
    - source: salt://pypi/linehaul/linehaul.service.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644


/srv/linehaul/etc/bigquery.json:
  file.managed:
    - contents_pillar: linehaul:credentials
    - user: linehaul
    - group: linehaul
    - mode: 640
    - makedirS: True
    - show_diff: False
    - require:
      - user: linehaul

/var/log/linehaul:
  file.directory:
    - user: linehaul
    - dir_mode: 755
    - require:
      - user: linehaul


/etc/logrotate.d/linehaul:
  file.managed:
    - source: salt://pypi/linehaul/logrotate.conf
