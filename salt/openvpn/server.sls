openvpn:
  pkg.installed:
    - pkgs:
      - openvpn

  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/dh2048.pem
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt
    - require:
      - pkg: openvpn
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/dh2048.pem
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt


/etc/openvpn/server.conf:
  file.managed:
    - source: salt://openvpn/configs/server.conf
    - user: root
    - group: root
    - mode: 644
    - requires:
      - pkg: openvpn


/etc/openvpn/keys:
  file.directory:
    - user: root
    - group: root
    - mode: 700
    - requires:
      - pkg: openvpn


/etc/openvpn/keys/ca.crt:
  file.managed:
    - source: salt://openvpn/configs/ca.crt
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/dh2048.pem:
  file.managed:
    - source: salt://openvpn/configs/dh2048.pem
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/server.crt:
  file.managed:
    - source: salt://openvpn/configs/server.crt
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys



/etc/openvpn/keys/server.key:
  file.managed:
    - contents_pillar: openvpn:server.key
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys
