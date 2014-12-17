include:
  - nginx
  - postgresql.client


graphite:
  pkg.installed:
    - pkgs:
      - graphite-web
      - gunicorn

  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /usr/share/graphite-web/wsgi.py
      - file: /etc/init/graphite.conf
      - file: /etc/ssl/certs/PSF_CA.pem
    - require:
      - pkg: graphite
      - file: /var/log/graphite
      - file: /var/run/gunicorn


/etc/graphite:
  file.directory:
    - group: _graphite
    - mode: 750
    - require:
      - pkg: graphite


/usr/share/consul-template/templates/local_settings.py:
  file.managed:
    - source: salt://monitoring/server/configs/local_settings.py.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul-template


/etc/consul-template.d/graphite.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/local_settings.py
        destination: /etc/graphite/local_settings.py
        command: service graphite restart
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template


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
