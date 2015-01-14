include:
  - nginx


moin:
  pkg.installed:
    - pkgs:
      - python-moinmoin
      - python-xapian
      - python-gdchart2

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
    - mode: 750
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


{% for wiki, config in pillar["moin"]["wikis"].items() %}
/etc/moin/{{ wiki }}.py:
  file.managed:
    - source: salt://moin/configs/wiki.py.jinja
    - template: jinja
    - context:
        config: {{ config }}
        data_dir: /srv/moin/instances/{{ wiki }}/data
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: moin
      - file: /srv/moin/instances/
{% endfor %}
