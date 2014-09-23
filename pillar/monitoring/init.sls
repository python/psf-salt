diamond:
  collectors:
    ConnTrack:
      enabled: True
      dir: /proc/sys/net/netfilter
      files: '"nf_conntrack_count,nf_conntrack_max"'
    CPU:
      enabled: True
    DiskSpace:
      enabled: True
    DiskUsage:
      enabled: True
    EntropyStat:
      enabled: True
    Httpd:
      enabled: False
    LoadAverage:
      enabled: True
    Memory:
      enabled: True
    Network:
      enabled: True
    Ntpd:
      enabled: True
      ntpdc_bin: /usr/bin/ntpdc
