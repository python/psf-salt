mail-pkgs:
  pkg.installed:
    - pkgs:
      - ssmtp
      - bsd-mailx


/etc/ssmtp/ssmtp.conf:
  file.managed:
    - source: salt://base/config/ssmtp.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: mail-pkgs
