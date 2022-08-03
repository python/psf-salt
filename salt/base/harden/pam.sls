libpam-ccreds:
  pkg.purged


# Remove pam_cracklib, because it does not play nice with passwdqc
libpam-cracklib:
  pkg.purged


libpam-passwdqc:
  pkg.installed:
    - require:
      - pkg: libpam-cracklib


# See NSA 2.3.3.1.2
/usr/share/pam-configs/passwdqc:
  file.managed:
    - source: salt://base/harden/config/pam_passwdqc
    - user: root
    - group: root
    - mode: "0640"
    - require:
      - pkg: libpam-passwdqc


libpam-modules:
  pkg.installed


/usr/share/pam-configs/tally2:
  file.managed:
    - source: salt://base/harden/config/pam_tally2
