include:
  - nginx

/etc/nginx/sites.d/jython.conf:
  file.managed:
    - source: salt://jython/config/nginx.jython.conf
    - user: root
    - group: root
    - mode: 644
