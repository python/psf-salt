include:
  - nginx


graphite:
  pkg.installed:
    - pkgs:
      - graphite-web
      - gunicorn

  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/graphite/local_settings.py
      - file: /usr/share/graphite-web/wsgi.py
      - file: /etc/init/graphite.conf
    - require:
      - pkg: graphite
      - file: /var/log/graphite
      - file: /var/run/gunicorn


/etc/graphite/local_settings.py:
  file.managed:
    - source: salt://monitoring/server/configs/local_settings.py.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite


graphite-init-db:
  cmd.run:
    - name: graphite-manage syncdb --noinput
    - require:
      - pkg: graphite
      - file: /etc/graphite/local_settings.py


/usr/share/graphite-web/wsgi.py:
  file.symlink:
    - target: /usr/share/graphite-web/graphite.wsgi
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite


/var/log/graphite:
  file.directory:
    - user: root
    - group: _graphite
    - dir_mode: 775
    - file_mode: 664
    - recurse:
      - user
      - group
      - mode
    - require:
      - pkg: graphite


/var/run/gunicorn:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 777
    - file_mode: 666
    - require:
      - pkg: graphite


/etc/init/graphite.conf:
  file.managed:
    - source: salt://monitoring/server/configs/graphite-init.conf
    - user: root
    - group: root
    - mode: 644


/etc/nginx/sites.d/graphite.conf:
  file.managed:
    - source: salt://monitoring/server/configs/graphite-nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx
