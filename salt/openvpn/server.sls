openvpn:
  pkg.installed:
    - pkgs:
      - openvpn
      - easy-rsa

  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/keys/ca.key
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/dh4096
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt
    - require:
      - pkg: openvpn
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/keys/ca.key
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/dh4096
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt


/etc/openvpn/easy-rsa:
  file.directory:
    - user: root
    - group: root
    - mode: 750
    - requires:
      - pkg: openvpn


/etc/openvpn/easy-rsa/vars:
  file.managed:
    - source: salt://openvpn/configs/easy-rsa.vars
    - user: root
    - group: root
    - mode: 640
    - requires:
      - pkg: openvpn
      - file: /etc/openvpn/easy-rsa


/etc/openvpn/server.conf:
  file.managed:
    - source: salt://openvpn/configs/server.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - requires:
      - pkg: openvpn


/etc/openvpn/keys:
  file.directory:
    - user: root
    - group: root
    - mode: 700
    - requires:
      - pkg: openvpn


/etc/openvpn/keys/ca.key:
  file.managed:
    - contents_pillar: openvpn:ca.key
    - user: root
    - group: root
    - mode: 600


/etc/openvpn/keys/ca.crt:
  file.managed:
    - contents_pillar: openvpn:ca.crt
    - user: root
    - group: root
    - mode: 600


/etc/openvpn/keys/dh4096:
  file.managed:
    - contents_pillar: openvpn:dh4096.pem
    - user: root
    - group: root
    - mode: 600


/etc/openvpn/keys/server.key:
  file.managed:
    - contents_pillar: openvpn:server.key
    - user: root
    - group: root
    - mode: 600


/etc/openvpn/keys/server.crt:
  file.managed:
    - contents_pillar: openvpn:server.crt
    - user: root
    - group: root
    - mode: 600
