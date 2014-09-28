/etc/apt/keys:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644


/etc/apt/keys/psf.gpg:
  file.managed:
    - source: salt://base/config/APT-GPG-KEY-PSF
    - user: root
    - group: root
    - mode: 644

  cmd.wait:
    - name: apt-key add /etc/apt/keys/psf.gpg
    - watch:
      - file: /etc/apt/keys/psf.gpg

psf-apt-repo:
  pkgrepo.managed:
    - name: deb http://apt.psf.io/ trusty main
    - file: /etc/apt/sources.list.d/psf.list
    - require:
      - file: /etc/apt/keys/psf.gpg
      - cmd: /etc/apt/keys/psf.gpg
