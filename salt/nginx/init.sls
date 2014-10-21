include:
  - monitoring.client.collectors.nginx

nginx:
  user.present:
    - system: True
    - shell: /sbin/nologin
    - groups:
      - nginx
    - require:
      - group: nginx
  group.present:
    - system: True
  pkg:
    - installed
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/conf.d/*.conf
      - file: /etc/nginx/sites.d/*.conf
      - file: /etc/nginx/fastly_params
      - file: /etc/ssl/private/*.pem
    - require:
      - file: /etc/nginx/nginx.conf
      - pkg: nginx
      - user: nginx

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/config/nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/nginx/fastly_params:
  file.managed:
    - source: salt://nginx/config/fastly_params.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/nginx/conf.d/PLACEHOLDER.conf:
  file.managed:
    - contents:
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/nginx/sites.d/:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - require:
      - pkg: nginx

/etc/logrotate.d/nginx:
  file.managed:
    - source: salt://nginx/config/nginx.logrotate
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/var/log/nginx:
  file.directory:
    - user: nginx
    - group: root
    - mode: 0755
    - require:
      - pkg: nginx
      - user: nginx
