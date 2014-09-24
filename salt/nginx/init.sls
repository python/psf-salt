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
      - file: /var/log/nginx

/etc/nginx/conf.d/PLACEHOLDER.conf:
  file.managed:
    - contents:
    - user: root
    - group: root
    - mode: 644

/etc/nginx/sites.d/:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/logrotate.d/nginx:
  file.managed:
    - source: salt://nginx/config/nginx.logrotate
    - user: root
    - group: root
    - mode: 644

/var/log/nginx:
  file.directory:
    - user: nginx
    - group: root
    - mode: 0755
