monitoring-collectors-default-packages:
  pkg.installed:
    - pkgs:
      - python-utmp


/etc/diamond/collectors/ConnTrackCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
          dir: /proc/sys/net/netfilter
          files: '"nf_conntrack_count,nf_conntrack_max"'
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
      - file: /etc/diamond/collectors


{% set collectors = [
  "CPU", "DiskSpace", "DiskUsage", "EntropyStat", "LoadAverage", "Memory",
  "Network", "Ntpd", "TCP", "UDP", "Users",
] %}

{% for collector in collectors %}
/etc/diamond/collectors/{{ collector }}Collector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
      - file: /etc/diamond/collectors
{% endfor %}


/etc/diamond/collectors/HttpdCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: False
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
      - file: /etc/diamond/collectors


/etc/diamond/collectors/UserScriptsCollector.conf:
  file.managed:
    - source: salt://monitoring/client/configs/Collector.conf.jinja
    - template: jinja
    - context:
        collector:
          enabled: True
          scripts_path: /usr/local/share/diamond/user_scripts/
    - use:
      - file: /etc/diamond/diamond.conf
    - watch_in:
      - service: diamond
    - require:
      - pkg: diamond
      - group: diamond
      - file: /etc/diamond/collectors
