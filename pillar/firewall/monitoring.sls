firewall:
  http:
    port: 80

  carbon-line-receiver:
    port: 2003
    source: 192.168.5.0/24

  carbon-pickle-receiver:
    port: 2004
    source: 192.168.5.0/24

  carbon-line-receiver-relay:
    port: 2013
    source: 192.168.5.0/24

  carbon-pickle-receiver-relay:
    port: 2014
    source: 192.168.5.0/24

  carbon-line-receiver-aggregator:
    port: 2023
    source: 192.168.5.0/24

  carbon-pickle-receiver-aggregator:
    port: 2024
    source: 192.168.5.0/24

  carbon-cache-query:
    port: 7002
    source: 192.168.5.0/24
