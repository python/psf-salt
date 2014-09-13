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

  service.running:
    - name: ssh
    - enable: True
    - reload: True
    - watch:
      - file: /etc/ssh/sshd_config
    - require:
      - file: /etc/ssh/sshd_config


/etc/duo/pam_duo.conf:
  file.managed:
    - source: salt://duosec/config/pam_duo.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 600
    - require:
      - pkg: duosec


/etc/pam.d/common-auth:
  file.managed:
    - source: salt://duosec/config/common-auth
    - user: root
    - group: root
    - mode: 600
    - require:
      - pkg: duosec
      - file: /etc/duo/pam_duo.conf


/etc/ssh/sshd_config:
  file.managed:
    - source: salt://duosec/config/sshd_config
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: duosec
      - file: /etc/duo/pam_duo.conf
