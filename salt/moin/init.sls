include:
  - nginx


moin:
  pkg.installed:
    - pkgs:
      - python-moinmoin
      - python-docutils
      - python-gdchart2
      - python-openid
      - python-xapian

  group.present:
    - system: True

  user.present:
    - home: /srv/moin
    - createhome: False
    - gid_from_name: True
    - require:
      - group: moin


libapache2-mod-wsgi:
  pkg.purged:
    - pkgs:
      - libapache2-mod-wsgi
      - apache2-bin
    - require:
      - pkg: moin


/etc/moin/farmconfig.py:
  file.managed:
    - source: salt://moin/configs/farmconfig.py.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: moin


/etc/moin/shared_intermap.txt:
  file.managed:
    - source: salt://moin/configs/shared_intermap.txt
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: moin


/srv/moin/:
  file.directory:
    - user: moin
    - group: moin
    - mode: 755
    - require:
      - user: moin

/srv/moin/instances/:
  file.directory:
    - user: moin
    - group: moin
    - mode: 750
    - require:
      - user: moin
      - file: /srv/moin/


/usr/share/moin/server/moin_wsgi.py:
  file.managed:
    - source: salt://moin/configs/moin_wsgi.py
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: moin


{% for wiki, config in pillar["moin"]["wikis"].items() %}
/etc/moin/{{ wiki }}.py:
  file.managed:
    - source: salt://moin/configs/wiki.py.jinja
    - template: jinja
    - context:
        config: {{ config }}
        data_dir: /srv/moin/instances/{{ wiki }}/data/
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: moin
      - file: /srv/moin/instances/
{% endfor %}


gunicorn:

  pkg.installed:
    - pkgs:
      - gunicorn
      - python-setproctitle

  file.managed:
    - name: /etc/gunicorn.d/moin.conf
    - source: salt://moin/configs/gunicorn.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: gunicorn
      - file: /usr/share/moin/server/moin_wsgi.py

  service.running:
    - enable: True
    - sig: 'gunicorn: master \[moin\.conf]'
    - require:
      - pkg: gunicorn
    - watch:
      - pkg: moin
      - file: gunicorn
      - file: /usr/share/moin/server/moin_wsgi.py
      - file: /etc/moin/farmconfig.py
      {% for wiki in pillar["moin"]["wikis"] %}
      - file: /etc/moin/{{ wiki }}.py
      {% endfor %}


/etc/nginx/sites.d/moin.conf:
  file.managed:
    - source: salt://moin/configs/moin-nginx.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/


/etc/consul.d/service-wiki.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: wiki
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul-pkgs
