backup-server:
  volumes:
    /dev/xvdb: /backup
  backups:
    jython-web:
      directory: /backup/jython-web
      user: jython-web
      increment_retention: 7D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClOcS0Oqdk7NxEPjVuOb0UUNYdMmxCDQx7xoMAM/7E1hh9tmk6Wzi+DjekDm7MoeZ9wE0WP866ec7pJ98EJdUOWSdYjpLtwXI3WZQ07TuTBKT8wMbvFPZl+h3sK3FYn2DcJbna7hh2Ymh6KrutadbqKe2bwnAC4D/zt0krS1t9hWN1DFlxkwQGkPRRzsPR9x+Tur/xR7lVGwP/ilU+5Vt7Q8AQlJDPKFe+hzmq9yZZYt46OzZtqDiSLpyDrTVYZ/eQXw+/Mv9JoLcGNfLW8485Pmx3UGx1kscVBdsAG0ELOnFBCHNvCMPCSh3UjPdlU+wF2tRKfTw9owiajKP/vTDT
