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
      - python3.13-dev
      - python3.13-venv
      - latexmk
      - texinfo
      - texlive
      - texlive-latex-extra
      - texlive-latex-recommended
      - texlive-fonts-recommended
      - texlive-fonts-extra
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
    - name: 'python3.13 -m venv /srv/docsbuild/venv'
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

docsbuild-fastly-service-id:
  cron.env_present:
    - user: docsbuild
    - name: FASTLY_SERVICE_ID
    - value: {{ pillar.get('docs', {}).get('fastly', {}).get('service_id', '') }}

docsbuild-fastly-token:
  cron.env_present:
    - user: docsbuild
    - name: FASTLY_TOKEN
    - value: {{ pillar.get('docs', {}).get('fastly', {}).get('token', '') }}

docsbuild-no-html:
  cron.present:
    # run every other day at 07:06
    - identifier: docsbuild-no-html
    - name: >
        /srv/docsbuild/venv/bin/python
        /srv/docsbuild/scripts/build_docs.py
        --select-output=no-html
    - user: docsbuild
    - minute: 7
    - hour: 6
    - daymonth: '*/2'
    - require:
      - cmd: virtualenv-dependencies

docsbuild-only-html:
  cron.present:
    # run daily at 04:42
    - identifier: docsbuild-only-html
    - name: >
        /srv/docsbuild/venv/bin/python
        /srv/docsbuild/scripts/build_docs.py
        --select-output=only-html
    - user: docsbuild
    - minute: 42
    - hour: 4
    - require:
      - cmd: virtualenv-dependencies

docsbuild-only-html-en:
  cron.present:
    # run twice hourly at HH:16 and HH:46
    - identifier: docsbuild-only-html-en
    - name: >
        /srv/docsbuild/venv/bin/python
        /srv/docsbuild/scripts/build_docs.py
        --select-output=only-html-en
        --language=en
    - user: docsbuild
    - minute: 16,46
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

/etc/nginx/sites.d/docs/redirects.conf:
  file.managed:
    - source: salt://docs/config/nginx.docs-redirects.conf
    - user: root
    - group: root
    - mode: "0644"
    - makedirs: True
    - require:
      - pkg: nginx

/etc/nginx/sites.d/docs-backend.conf:
  file.managed:
    - source: salt://docs/config/nginx.docs-backend.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params
      - file: /etc/nginx/sites.d/docs/redirects.conf

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
