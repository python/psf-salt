{% set postgresql = salt["pillar.get"]("postgresql") %}

wal-e-dependencies:
  pkg.installed:
    - pkgs:
      - daemontools
      - lzop
      - pv
      - python-gevent
      - python-boto
      - python-swiftclient
      - python-keystoneclient

wal-e:
  pkg.installed:
    - sources:
      - python-wal-e: salt://postgresql/server/packages/python-wal-e_0.7.2_all.deb
    - require:
      - pkg: wal-e-dependencies


/etc/wal-e.d:
  file.directory:
    - user: root
    - group: postgres
    - mode: 750


/etc/wal-e.d/WALE_SWIFT_PREFIX:
  file.managed:
    - contents: "{{ pillar['wal-e']['swift-prefix'] }}/{{ grains['fqdn'] }}"
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_AUTHURL:
  file.managed:
    - contents_pillar: wal-e:swift-authurl
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_REGION:
  file.managed:
    - contents_pillar: wal-e:swift-region
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_TENANT:
  file.managed:
    - contents_pillar: wal-e:swift-tenant
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_USER:
  file.managed:
    - contents_pillar: wal-e:swift-user
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_PASSWORD:
  file.managed:
    - contents_pillar: wal-e:swift-password
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d
