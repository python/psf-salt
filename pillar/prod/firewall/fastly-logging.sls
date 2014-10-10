firewall:
  # See for http://docs.fastly.com/guides/22951283/21713181 IP blocks.
  fastly_syslog_tcp_72:
    source: 199.27.72.0/24
    port: 514
  fastly_syslog_tcp_77:
    source: 199.27.77.0/24
    port: 514
