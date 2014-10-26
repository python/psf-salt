include:
  - nginx


/etc/nginx/sites.d/downloads-backend.conf:
  file.managed:
    - source: salt://downloads/config/nginx.downloads-backend.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params


/srv/www.python.org/_check:
  file.managed:
    - user: root
    - group: downloads
    - mode: 644
    - makedirs: True
    - dir_mode: 775


/etc/consul.d/service-downloads.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: downloads
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul
      - service: nginx
