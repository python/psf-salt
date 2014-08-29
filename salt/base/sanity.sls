niceties:
  pkg.installed:
    - pkgs:
      - htop
      - traceroute

time-sync:
  pkg.installed:
    - pkgs:
      - ntp
      - ntpdate

ntp:
  service:
    - running
    - enable: True 
