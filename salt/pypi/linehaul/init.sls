pypy3:
  archive.extracted:
    - name: /opt/pypy
    - source: https://bitbucket.org/squeaky/portable-pypy/downloads/pypy3.5-6.0.0-linux_x86_64-portable.tar.bz2
    - source_hash: sha256=07f16282d126abfa759702baea869b0f661aa97f4c553ebec66c624bda28155f
    - source_hash_update: True
    - options: --strip 1
    - enforce_toplevel: False
    - trim_output: 5


linehaul:
  pkg.installed:
    - pkgs:
      - git
      - virtualenv
      - gcc
      - python3.6-dev
      - python-pip
      - python3-pip
      - libffi-dev
      - libssl-dev
    - require:
      - archive: pypy3

  user.present:
    - name: linehaul
    - home: /srv/linehaul/
    - createhome: True
    - groups:
      - ssl-cert

  git.latest:
    - name: https://github.com/pypa/linehaul.git
    - target: /srv/linehaul/src
    - rev: master
    - branch: master
    - force_reset: True
    - force_fetch: True
    - user: linehaul
    - require:
      - pkg: linehaul
      - user: linehaul

  virtualenv.managed:
    - name: /srv/linehaul/env/
    - user: linehaul
    - requirements: /srv/linehaul/src/requirements/main.txt
    - python: /opt/pypy/bin/pypy3.5
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


/srv/linehaul/etc:
  file.directory:
    - user: linehaul
    - group: linehaul
    - mode: 750


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
