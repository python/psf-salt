/etc/apt/keys:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644


psf:
  pkgrepo.managed:
    - name: "deb [arch=amd64] https://s3.amazonaws.com/apt.psf.io/psf/ {{ grains['oscodename'] }} main"
    - file: /etc/apt/sources.list.d/psf.list
    - key_url: salt://base/config/APT-GPG-KEY-PSF
    - order: 2
