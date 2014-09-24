{% set openvpn = salt["pillar.get"]("openvpn") %}

openvpn:
  pkg.installed:
    - pkgs:
      - openvpn

  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/server-https.conf
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/dh.pem
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt
      - file: /etc/openvpn/keys/ta.key
      {% for user in openvpn.users %}
      - file: /etc/openvpn/ccd/{{ user }}
      {% endfor %}
    - require:
      - pkg: openvpn
      - pkg: duo-openvpn
      - file: /var/log/openvpn
      - file: /etc/openvpn/server.conf
      - file: /etc/openvpn/server-https.conf
      - file: /etc/openvpn/keys/ca.crt
      - file: /etc/openvpn/keys/crl.pem
      - file: /etc/openvpn/keys/dh.pem
      - file: /etc/openvpn/keys/server.key
      - file: /etc/openvpn/keys/server.crt
      - file: /etc/openvpn/keys/ta.key
      {% for user in openvpn.users %}
      - file: /etc/openvpn/ccd/{{ user }}
      {% endfor %}

duo-openvpn:
  pkg.installed:
    - sources:
      - duo-openvpn: salt://openvpn/packages/duo_openvpn-2.1.0_amd64.deb
    - require:
      - pkg: openvpn


/var/log/openvpn:
  file.directory:
    - user: root
    - group: root
    - mode: 777


/etc/openvpn/server.conf:
  file.managed:
    - source: salt://openvpn/configs/server.conf.jinja
    - template: jinja
    - context:
      port: 1194
      protocol: udp
      bind: {{ salt["pillar.get"]("vpn0_internal_network") }}
      device: tun0
      instance: primary
    - user: root
    - group: root
    - mode: 644
    - requires:
      - pkg: duo-openvpn
      - pkg: openvpn


/etc/openvpn/server-https.conf:
  file.managed:
    - source: salt://openvpn/configs/server.conf.jinja
    - template: jinja
    - context:
      port: 443
      protocol: tcp
      bind: {{ salt["pillar.get"]("vpn1_internal_network") }}
      device: tun1
      instance: https
    - user: root
    - group: root
    - mode: 644
    - requires:
      - pkg: duo-openvpn
      - pkg: openvpn


/etc/openvpn/keys:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - requires:
      - pkg: openvpn


/etc/openvpn/keys/ca.crt:
  file.managed:
    - contents_pillar: psf-ca:ca.crt
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/crl.pem:
  file.managed:
    - contents_pillar: psf-ca:crl.pem
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/dh.pem:
  file.managed:
    - contents_pillar: openvpn:dh.pem
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/server.crt:
  file.managed:
    - contents_pillar: openvpn_keys:server.crt
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/openvpn/keys



/etc/openvpn/keys/server.key:
  file.managed:
    - contents_pillar: openvpn_keys:server.key
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/keys/ta.key:
  file.managed:
    - contents_pillar: openvpn_keys:ta.key
    - user: root
    - group: root
    - mode: 600
    - requires:
      - file: /etc/openvpn/keys


/etc/openvpn/ccd:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - requires:
      - pkg: openvpn


{% for user in openvpn.users %}
/etc/openvpn/ccd/{{ user }}:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/openvpn/ccd
{% endfor %}


/etc/sysctl.d/10-ip-forwarding.conf:
  file.managed:
    - source: salt://openvpn/configs/10-ip-forwarding.conf
    - user: root
    - group: root
    - mode: 644
