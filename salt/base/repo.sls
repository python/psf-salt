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


/etc/apt/sources.list.d/psf.list:
  file.managed:
    - contents: "deb [arch=amd64] https://s3.amazonaws.com/apt.psf.io/psf/ {{ grains['oscodename'] }} main\n"
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/apt/keys/psf.gpg
      - cmd: /etc/apt/keys/psf.gpg

  module.wait:
    - name: pkg.refresh_db
    - watch:
      - file: /etc/apt/sources.list.d/psf.list
