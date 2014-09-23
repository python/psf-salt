diamond-depends:
  pkg.installed:
    - pkgs:
      - python-configobj
      - python-psutil


diamond:
  pkg.installed:
    - sources:
      - python-diamond: salt://monitoring/client/packages/python-diamond_3.4.421_all.deb
    - require:
      - pkg: diamond-depends

  group.present:
    - system: True

  user.present:
    - shell: /bin/false
    - system: True
    - gid_from_name: True
    - require:
      - group: diamond


/etc/diamond/diamond.conf:
  file.managed:
    - source: salt://monitoring/client/configs/diamond.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: diamond


