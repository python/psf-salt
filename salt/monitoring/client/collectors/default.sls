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

{% set collectors = [
  "CPU", "DiskSpace", "DiskUsage", "EntropyStat", "LoadAverage", "Memory",
  "Network", "Ntpd",
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
