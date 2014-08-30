include:
  - nginx
  - nginx.fastly-backend

/etc/nginx/sites.d/downloads-backend.conf:
  file.managed:
    - source: salt://downloads/config/nginx.downloads-backend.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - module: self-signed-cert
