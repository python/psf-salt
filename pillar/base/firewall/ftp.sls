firewall:
  ftp:
    port: 21
  ftp-incoming:
    raw: -A INPUT -p tcp --destination-port 10090:10100 -j ACCEPT
