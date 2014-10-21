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
