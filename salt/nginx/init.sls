include:
  - monitoring.client.collectors.nginx


nginx:
  pkgrepo.managed:
    - name: deb http://nginx.org/packages/ubuntu/ {{ grains.oscodename }} nginx
    - file: /etc/apt/sources.list.d/nginx.list
    - key_url: salt://nginx/config/APT-GPG-KEY-NGINX
    - order: 2
    - require_in:
      - pkg: nginx

  user.present:
    - system: True
    - shell: /sbin/nologin

  group.present:
    - system: True
    - addusers:
      - nginx
    - require:
      - user: nginx

  pkg:
    - installed

  service.running:
    - enable: True
    - restart: True
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


/etc/ssl/private/PLACEHOLDER.pem:
  file.managed
