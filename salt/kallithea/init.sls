include:
  - nginx

kallithea-user:
  user.present:
    - name: kallithea
    - createhome: False

kallithea:
  pkg.installed:
    - pkgs:
      - gunicorn
      - python-dev
      - python-pip
      - python-virtualenv

  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /kallithea/data/wsgi.py
      - file: /etc/init/kallithea.conf
    - require:
      - pkg: kallithea
      - file: /var/run/gunicorn
      - cmd: kallithea-init-db

/kallithea:
  file.directory:
    - user: kallithea
    - group: kallithea
    - mode: 750
/kallithea/repos:
  file.directory:
    - user: kallithea
    - group: kallithea
    - mode: 750
    - require:
      - file: /kallithea
/kallithea/data:
  file.directory:
    - user: kallithea
    - group: kallithea
    - mode: 750
    - require:
      - file: /kallithea

/kallithea/venv:
    virtualenv.managed:
        - no_site_packages: True
        - runas: kallithea
        - requirements: salt://kallithea/configs/requirements.txt
        - require:
            - file: /kallithea
            - pkg: kallithea

# kallithea initialization db, etc.
/kallithea/data/production.ini:
    file.managed:
        - template: jinja
        - source: salt://kallithea/configs/production.ini
        - user: kallithea
        - group: kallithea
        - mode: 750
        - require:
          - file: /kallithea/data
kallithea-init-db:
  cmd.run:
    - name: ". /kallithea/venv/bin/activate && paster setup-db production.ini --user=admin1 --email=example@example.com --password=admin1 --repos=/kallithea/repos --force-yes"
    - cwd: /kallithea/data/
    - user: kallithea
    - require:
        - pkg: kallithea
        - virtualenv: /kallithea/venv
        - file: /kallithea/repos
        - file: /kallithea/data/production.ini

# kallithea as an upstart service
/etc/kallithea:
  file.directory:
    - group: kallithea
    - mode: 750
    - require:
      - pkg: kallithea

/etc/init/kallithea.conf:
  file.managed:
    - source: salt://kallithea/configs/kallithea-init.conf
    - user: root
    - group: root
    - mode: 644

# kallithea by gunicorn
/kallithea/data/wsgi.py:
    file.managed:
        - source: salt://kallithea/configs/wsgi.py
        - require:
          - file: /kallithea/data

/var/run/gunicorn:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 777
    - file_mode: 666
    - require:
      - pkg: kallithea
      - file: /kallithea/data/wsgi.py

# nginx stuff
/etc/nginx/sites.d/kallithea.conf:
  file.managed:
    - source: salt://kallithea/configs/kallithea-nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx
