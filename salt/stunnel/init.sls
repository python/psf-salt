stunnel:
  pkg.installed:
    - pkgs:
      - stunnel

  user.present:
    - name: stunnel
    - system: True

  file.managed:
    - name: /etc/default/stunnel
    - source: salt://stunnel/configs/default.sh
    - require:
      - pkg: stunnel

  service.running:
    - name: stunnel
    - enable: True
    - reload: True
    - require:
      - pkg: stunnel
      - user: stunnel
    - watch:
      - file: /etc/default/stunnel
      - file: /etc/stunnel/*.conf
      - file: /etc/ssl/private/*.pem
