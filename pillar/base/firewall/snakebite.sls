firewall:
  snakebite-blackhole-tcp:
    raw: -A INPUT -p tcp --destination-port 56666 -j DROP
  snakebite-blackhole-udp:
    raw: -A INPUT -p udp --destination-port 56666 -j DROP
  snakebite-whitehole-tcp:
    raw: -A INPUT -p tcp --destination-port 56667 -j REJECT
  snakebite-whitehole-udp:
    raw: -A INPUT -p udp --destination-port 56667 -j REJECT
