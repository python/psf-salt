tracker-roundup-nginx-extras-upstreams:
  file.managed:
    - name: /etc/nginx/conf.d/tracker-extras/upstreams-roundup.conf
    - source: salt://bugs/config/roundup/tracker-upstreams.conf
    - user: root
    - group: root
    - require:
      - file: tracker-nginx-extras
