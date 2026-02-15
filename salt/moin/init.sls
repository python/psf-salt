include:
  - nginx

moin:
  group.present:
    - system: True

/data/www/wiki-static:
  file.directory:
    - user: root
    - group: root
    - dir_mode: "0755"
    - makedirs: True

/etc/nginx/sites.d/wiki-static.conf:
  file.managed:
    - source: salt://moin/configs/wiki-static.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/
      - pkg: nginx

/etc/nginx/sites.d/wiki-redirects.conf:
  file.managed:
    - source: salt://moin/configs/wiki-redirects.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/
      - pkg: nginx

/etc/consul.d/service-moin.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: moin
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs
