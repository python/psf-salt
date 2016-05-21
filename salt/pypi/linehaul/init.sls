linehaul:
  pkg.installed:
    - pkgs:
      - git
      - virtualenv
      - gcc
      - python3-dev
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
    - name: /src/linehaul/src/
    - user: linehaul
    - bin_env: /srv/linehaul/env
    - require:
      - virtualenv: linehaul
    - watch:
      - git: linehaul

  service.running:
    - enable: True
    - watch:
      - file: /etc/systemd/system/linehaul.service
      - file: /etc/ssl/private/linehaul.psf.io.pem
      - file: /srv/linehaul/etc/bigquery.key


/etc/systemd/system/linehaul.service:
  file.managed:
    - source: salt://pypi/linehaul/linehaul.service.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - show_diff: False


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
