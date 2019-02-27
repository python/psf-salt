firewall:
  ftp-20:
    port: 20
  ftp-21:
    port: 21
  ftp-incoming:
    raw: -A INPUT -p tcp --destination-port 10090:10100 -j ACCEPT
