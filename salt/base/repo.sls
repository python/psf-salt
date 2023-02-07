/etc/apt/keys:
  file.directory:
    - user: root
    - group: root
    - dir_mode: "0755"
    - file_mode: "0644"

psf:
  pkgrepo.managed:
    - name: "deb https://packagecloud.io/psf/infra/ubuntu {{ grains['oscodename'] }} main"
    - file: /etc/apt/sources.list.d/psf.list
    - key_url: salt://base/config/APT-GPG-KEY-PSF

# Make source list globally readable.
/etc/apt/sources.list.d/psf.list:
  file.managed:
    - mode: "0644"
    - replace: False
    - require:
      - pkgrepo: psf
