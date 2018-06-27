include:
  - nginx

deadsnakes-ppa:
  pkgrepo.managed:
    - ppa: fkrull/deadsnakes


# Various packages required for building documentation.
doc-pkgs:
  pkg.installed:
    - pkgs:
      - build-essential
      - git
      - mercurial
      - python-dev
      - python3.6-dev
      - python-virtualenv
      - texlive
      - texlive-latex-extra
      - texlive-latex-recommended
      - texlive-fonts-recommended
      - texlive-lang-all
      - texlive-xetex
      - zip
    - require:
      - pkgrepo: deadsnakes-ppa

docsbuild:
  user.present:
    - home: /srv/docsbuild/
    - groups:
      - docs
    - require:
      - group: docs

docsbuild-scripts:
   git.latest:
     - name: https://github.com/python/docsbuild-scripts.git
     - target: /srv/docsbuild/scripts/
     - user: docsbuild
     - require:
       - user: docsbuild
       - pkg: doc-pkgs

py36-virtualenv:
  cmd.run:
    - runas: docsbuild
    - name: 'python3.6 -m venv --without-pip /srv/docsbuild/venv'
    - creates: /srv/docsbuild/venv/bin/python
    - require:
      - pkg: doc-pkgs

/srv/docsbuild/venv/get-pip.py:
  file.managed:
    - user: docsbuild
    - source: https://bootstrap.pypa.io/get-pip.py
    - source_hash: sha256=19dae841a150c86e2a09d475b5eb0602861f2a5b7761ec268049a662dbd2bd0c
    - require:
      - cmd: py36-virtualenv

py36-virtualenv-pip:
  cmd.run:
    - runas: docsbuild
    - name: /srv/docsbuild/venv/bin/python /srv/docsbuild/venv/get-pip.py
    - creates: /srv/docsbuild/venv/bin/pip
    - require:
      - file: /srv/docsbuild/venv/get-pip.py

py36-virtualenv-dependencies:
  cmd.run:
    - runas: docsbuild
    - cwd: /srv/docsbuild/scripts
    - name: /srv/docsbuild/venv/bin/pip install -r /srv/docsbuild/scripts/requirements.txt
    - require:
      - cmd: py36-virtualenv-pip
    - onchanges:
      - git: docsbuild-scripts

docsbuild-full:
  cron.present:
    - identifier: docsbuild-full
    - name: python3 /srv/docsbuild/scripts/build_docs.py
    - user: docsbuild
    - minute: 7
    - hour: 0
    - require:
      - cmd: py36-virtualenv-dependencies

docsbuild-quick:
  cron.present:
    - identifier: docsbuild-quick
    - name: python3 /srv/docsbuild/scripts/build_docs.py -q
    - user: docsbuild
    - minute: 7
    - hour: 2-23/3
    - require:
      - cmd: py36-virtualenv-dependencies

/var/log/docsbuild/:
  file.directory:
    - user: docsbuild
    - group: docsbuild
    - mode: 755

/etc/logrotate.d/docsbuild:
  file.managed:
    - source: salt://docs/config/docsbuild.logrotate
    - user: root
    - group: root
    - mode: 644

/etc/nginx/sites.d/docs-backend.conf:
  file.managed:
    - source: salt://docs/config/nginx.docs-backend.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params


/etc/consul.d/service-docs.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: docs
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul
