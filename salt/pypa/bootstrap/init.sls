
include:
  - nginx


bootrap-deps:
  pkg.installed:
    - pkgs:
      - git
      - curl


/srv/bootstrap/www:
  file.directory:
    - user: nginx
    - group: nginx
    - mode: "0755"
    - makedirs: True


/etc/nginx/sites.d/bootstrap.pypa.io.conf:
  file.managed:
    - source: salt://pypa/bootstrap/config/nginx.conf.jinja
    - template: jinja
    - require:
      - file: /etc/nginx/sites.d/
      - file: /srv/bootstrap/www


pip-clone:
  git.latest:
    - name: https://github.com/pypa/get-pip.git
    - target: /srv/bootstrap/pip
    - user: nginx
    - force_clone: True
    - force_reset: True
    - force_checkout: True
    - require:
      - pkg: bootrap-deps


setuptools-clone:
  git.latest:
    - name: https://github.com/pypa/setuptools
    - rev: bootstrap
    - target: /srv/bootstrap/setuptools
    - user: nginx
    - force_clone: True
    - force_reset: True
    - force_checkout: True
    - require:
      - pkg: bootrap-deps


buildout-clone:
  git.latest:
    - name: https://github.com/buildout/buildout.git
    - rev: bootstrap-release
    - target: /srv/bootstrap/buildout
    - user: nginx
    - force_clone: True
    - force_reset: True
    - force_checkout: True
    - require:
      - pkg: bootrap-deps

virtualenv-clone:
  git.latest:
    - name: https://github.com/pypa/get-virtualenv.git
    - target: /srv/bootstrap/virtualenv
    - user: nginx
    - force_clone: True
    - force_reset: True
    - force_checkout: True
    - require:
      - pkg: bootrap-deps


/srv/bootstrap/www/pip:
  file.symlink:
    - target: /srv/bootstrap/pip/public
    - require:
      - git: pip-clone


/srv/bootstrap/www/get-pip.py:
  file.symlink:
    - target: /srv/bootstrap/pip/public/get-pip.py
    - require:
      - git: pip-clone

/srv/bootstrap/www/ez_setup.py:
  file.symlink:
    - target: /srv/bootstrap/setuptools/ez_setup.py
    - require:
      - git: setuptools-clone


/srv/bootstrap/www/bootstrap-buildout.py:
  file.symlink:
    - target: /srv/bootstrap/buildout/bootstrap/bootstrap.py
    - require:
      - git: buildout-clone

/srv/bootstrap/www/virtualenv:
  file.symlink:
    - target: /srv/bootstrap/virtualenv/public
    - require:
      - git: virtualenv-clone

/srv/bootstrap/www/virtualenv.pyz:
  file.symlink:
    - target: /srv/bootstrap/virtualenv/public/virtualenv.pyz
    - require:
      - git: virtualenv-clone

refresh-pip:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/get-pip.py'
    - require:
      - file: /srv/bootstrap/www/get-pip.py
    - onchanges:
      - git: pip-clone

purge-pip-index:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/pip/'
    - onchanges:
      - git: pip-clone

refresh-setuptools:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/ez_setup.py'
    - require:
      - file: /srv/bootstrap/www/ez_setup.py
    - onchanges:
      - git: setuptools-clone

refresh-buildout:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/bootstrap-buildout.py'
    - require:
      - file: /srv/bootstrap/www/bootstrap-buildout.py
    - onchanges:
      - git: buildout-clone

refresh-virtualenv:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/virtualenv.pyz'
    - require:
      - file: /srv/bootstrap/www/virtualenv.pyz
    - onchanges:
      - git: virtualenv-clone

refresh-virtualenv-files:
  cmd.run:
    - name: "find /srv/bootstrap/virtualenv/public -type l,f -printf '%P\n' | xargs -I{} curl -s -X PURGE https://bootstrap.pypa.io/virtualenv/{}"
    - require:
      - file: /srv/bootstrap/www/virtualenv.pyz
    - onchanges:
      - git: virtualenv-clone

purge-virutualenv-index:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/virtualenv/'
    - onchanges:
      - git: virtualenv-clone

purge-index:
  cmd.run:
    - name: 'curl -s -X PURGE https://bootstrap.pypa.io/'
    - onchanges:
      - git: pip-clone
      - git: setuptools-clone
      - git: buildout-clone
      - git: virtualenv-clone

/etc/consul.d/service-pypa-bootstrap.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: pypa-bootstrap
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs
