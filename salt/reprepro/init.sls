include:
  - nginx


reprepro:
  pkg.installed


/srv/apt:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755


/srv/apt/conf:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - file: /srv/apt


/srv/apt/incoming:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - file: /srv/apt


/srv/apt/conf/distributions:
  file.managed:
    - source: salt://reprepro/configs/distributions.jinja
    - template: jinja
    - user: www-data
    - group: www-data
    - mode: 644
    - require:
      - file: /srv/apt


/etc/nginx/sites.d/apt.conf:
  file.managed:
    - source: salt://reprepro/configs/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx
