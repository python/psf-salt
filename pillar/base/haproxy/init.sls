haproxy:
  services:
    docs:
      domains:
        - docs.python.org
        - doc.python.org
      hsts: True

    downloads:
      domains:
        - www.python.org
      path: /ftp/
      check: "HEAD /_check HTTP/1.1\\r\\nHost:\\ www.python.org"

    console:
      domains:
        - console.python.org
      hsts: True

    hg:
      domains:
        - hg.python.org
      hsts: True

  listens:
    hg_ssh:
      bind: :20100
      mode: tcp
      role: hg
      port: 22
