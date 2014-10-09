include:
  - nginx
  - nginx.ssl

/etc/nginx/sites.d/console-proxy.conf:
  file.managed:
    - source: salt://console-proxy/config/nginx.console-proxy.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/
