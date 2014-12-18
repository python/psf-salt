include:
  - nginx


/srv/speed.python.org:
  pkg.installed:
    - name: git

  git.latest:
    - name: https://github.com/python/speed.python.org.git
    - target: /srv/speed.python.org/


/etc/nginx/sites.d/speed-web.conf:
  file.managed:
    - source: salt://speed/web/config/nginx.conf.jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params


/etc/consul.d/service-speed-web.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: speed-web
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul
