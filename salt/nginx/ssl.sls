/etc/nginx/conf.d/ssl.conf:
  file.managed:
    - source: salt://nginx/config/nginx.ssl.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/ssl/private/star.python.org.pem:
  file.managed:
    - contents_pillar: tls_certs:star.python.org
    - user: root
    - group: root
    - mode: 600
