/etc/apt/keys:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644


/etc/apt/keys/duosecurity-trusty-main.gpg:
  file.managed:
    - source: salt://duosec/config/APT-GPG-KEY-DUO
    - user: root
    - group: root
    - mode: 644

  cmd.wait:
    - name: apt-key add /etc/apt/keys/duosecurity-trusty-main.gpg
    - watch:
      - file: /etc/apt/keys/duosecurity-trusty-main.gpg
    - require:
      - file: /etc/apt/keys/duosecurity-trusty-main.gpg


duosec:
  pkgrepo.managed:
    - name: deb http://pkg.duosecurity.com/Ubuntu trusty main
    - require:
      - file: /etc/apt/keys/duosecurity-trusty-main.gpg
      - cmd: /etc/apt/keys/duosecurity-trusty-main.gpg
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
