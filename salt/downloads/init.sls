include:
  - nginx


/etc/nginx/sites.d/downloads-backend.conf:
  file.managed:
    - source: salt://downloads/config/nginx.downloads-backend.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/
      - file: /etc/nginx/fastly_params


/etc/consul.d/service-downloads.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: downloads
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs
