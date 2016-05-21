linehaul:
  pkg.installed:
    - pkgs:
      - git
      - virtualenv
      - gcc
      - python3-dev
      - python-pip
      - python3-pip
      - libffi-dev
      - libssl-dev

  user.present:
    - name: linehaul
    - home: /srv/linehaul/
    - createhome: True
    - groups:
      - ssl-cert

  git.latest:
    - name: https://github.com/pypa/linehaul.git
    - target: /srv/linehaul/src
    - user: linehaul
    - require:
      - pkg: linehaul
      - user: linehaul

  virtualenv.managed:
    - name: /srv/linehaul/env/
    - user: linehaul
    - requirements: /srv/linehaul/src/requirements.txt
    - python: /usr/bin/python3
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
    - watch:
      - file: /etc/systemd/system/linehaul.service
      - file: /etc/ssl/private/linehaul.psf.io.pem
      - file: /srv/linehaul/etc/bigquery.key
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
    - source: salt://pypi/linehaul/linehaul.service
    - user: root
    - group: root
    - mode: 644


/srv/linehaul/etc/bigquery.key:
  file.managed:
    - contents_pillar: linehaul:key
    - user: linehaul
    - group: linehaul
    - mode: 640
    - makedirs: True
    - show_diff: False
    - require:
      - user: linehaul


/etc/logrotate.d/linehaul:
  file.managed:
    - source: salt://pypi/linehaul/logrotate.conf
