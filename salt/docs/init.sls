include:
  - nginx

deadsnakes-ppa:
  pkgrepo.managed:
    - ppa: deadsnakes/ppa

# Various packages required for building documentation.
doc-pkgs:
  pkg.installed:
    - pkgs:
      - build-essential
      - fonts-freefont-otf
      - fonts-noto
      - git
      - mercurial
      - python3.10-dev
      - python3.10-venv
      - latexmk
      - texinfo
      - texlive
      - texlive-latex-extra
      - texlive-latex-recommended
      - texlive-fonts-recommended
      - texlive-lang-all
      - texlive-xetex
      - xindy
      - zip

docsbuild:
  user.present:
    - home: /srv/docsbuild/
    - groups:
      - docs
      - docsbuild
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

virtualenv:
  cmd.run:
    - runas: docsbuild
    - name: 'python3.10 -m venv /srv/docsbuild/venv'
    - creates:
      - /srv/docsbuild/venv/bin/python
      - /srv/docsbuild/venv/bin/pip
    - require:
      - pkg: doc-pkgs

virtualenv-dependencies:
  cmd.run:
    - runas: docsbuild
    - cwd: /srv/docsbuild/scripts
    - name: /srv/docsbuild/venv/bin/pip install -r /srv/docsbuild/scripts/requirements.txt
    - require:
      - git: docsbuild-scripts
      - cmd: virtualenv
    - onchanges:
      - git: docsbuild-scripts

docsbuild-analytics:
  cron.env_present:
    - user: docsbuild
    - name: PYTHON_DOCS_ENABLE_ANALYTICS
    - value: 1

docsbuild-sentry:
  cron.env_present:
    - user: docsbuild
    - name: SENTRY_DSN
    - value: {{ pillar.get('docs', {}).get('sentry', {}).get('dsn', '') }}

docsbuild-no-html:
  cron.present:
    - identifier: docsbuild-no-html
    - name: >
        /srv/docsbuild/venv/bin/python
        /srv/docsbuild/scripts/build_docs.py
        --select-output=no-html
    - user: docsbuild
    - minute: 7
    - hour: 6
    - require:
      - cmd: virtualenv-dependencies

docsbuild-only-html:
  cron.present:
    - identifier: docsbuild-only-html
    - name: >
        /srv/docsbuild/venv/bin/python
        /srv/docsbuild/scripts/build_docs.py
        --select-output=only-html
    - user: docsbuild
    - minute: 16
    - require:
      - cmd: virtualenv-dependencies

# Dummy so that the old cron jobs are stopped
docsbuild-full:
  cron.absent:
    - identifier: docsbuild-full
    - user: docsbuild

/var/log/docsbuild/:
  file.directory:
    - user: docsbuild
    - group: docsbuild
    - mode: "0755"

/etc/logrotate.d/docsbuild:
  file.managed:
    - source: salt://docs/config/docsbuild.logrotate
    - user: root
    - group: root
    - mode: "0644"

/etc/nginx/sites.d/docs-backend.conf:
  file.managed:
    - source: salt://docs/config/nginx.docs-backend.conf
    - user: root
    - group: root
    - mode: "0644"
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
    - mode: "0644"
    - require:
      - pkg: consul-pkgs
