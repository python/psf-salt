nodejs:
  pkgrepo.managed:
    - name: deb https://deb.nodesource.com/node_6.x {{ grains["oscodename"] }} main
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: salt://nodejs/APT-GPG-KEY
    - require_in:
      - pkg: nodejs

  pkg.latest:
    - pkgs:
      - nodejs
    - refresh: True
