
niceties:
  pkg.installed:
    - pkgs:
      - htop

time-sync:
  pkg.installed:
    - pkgs:
      - ntp
      - ntpdate

ntp:
  service:
    - running
    - enable: True 
