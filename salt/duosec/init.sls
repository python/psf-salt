/etc/apt/keys/duosecurity-main.gpg:
  file.managed:
    - source: salt://duosec/config/APT-GPG-KEY-DUO
    - user: root
    - group: root
    - mode: 644

  cmd.wait:
    - name: apt-key add /etc/apt/keys/duosecurity-main.gpg
    - watch:
      - file: /etc/apt/keys/duosecurity-main.gpg


duosec:
  pkgrepo.managed:
    - name: deb http://pkg.duosecurity.com/Ubuntu {{ grains["oscodename"] }} main
    - require:
      - file: /etc/apt/keys/duosecurity-main.gpg
      - cmd: /etc/apt/keys/duosecurity-main.gpg
    - require_in:
      - pkg: duosec

  pkg.installed:
    - pkgs:
      - duo-unix


/etc/duo/pam_duo.conf:
  file.managed:
    - source: salt://duosec/config/pam_duo.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 600
    - watch_in:
      - service: ssh
    - require:
      - pkg: duosec
    - require_in:
      - file: /etc/ssh/sshd_config


/etc/pam.d/sshd:
  file.managed:
    - source: salt://duosec/config/pam-sshd
    - user: root
    - group: root
    - mode: 600
    - watch_in:
      - service: ssh
    - require:
      - pkg: duosec
      - file: /etc/duo/pam_duo.conf
    - require_in:
      - file: /etc/ssh/sshd_config
