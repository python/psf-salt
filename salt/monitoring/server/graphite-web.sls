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


/etc/graphite/local_settings.py.tmpl:
  file.managed:
    - source: salt://monitoring/server/configs/local_settings.py.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: graphite
      - file: /etc/graphite


/etc/graphite/local_settings.py:
  cmd.run:
    - name: "consul-template -once -config /etc/consul-template.conf -template '/etc/graphite/local_settings.py.tmpl:/etc/graphite/local_settings.py'"
    - user: root
    - creates: /etc/graphite/local_settings.py
    - require:
      - pkg: graphite
      - file: /etc/consul-template.conf
      - file: /etc/graphite/local_settings.py.tmpl
      - file: /etc/graphite


graphite-init-db:
  cmd.run:
    - name: graphite-manage syncdb --noinput
    - require:
      - pkg: graphite
      - cmd: /etc/graphite/local_settings.py


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


graphite-consul:
  file.managed:
    - name: /etc/init/graphite-consul.conf
    - source: salt://consul/init/consul-template.conf.jinja
    - template: jinja
    - context:
        templates:
          - "/etc/graphite/local_settings.py.tmpl:/etc/graphite/local_settings.py:service graphite restart"
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
      - cmd: /etc/graphite/local_settings.py
      - service: nginx
    - watch:
      - pkg: graphite
      - file: graphite-consul
      - file: /etc/consul-template.conf
      - file: /etc/graphite/local_settings.py.tmpl
