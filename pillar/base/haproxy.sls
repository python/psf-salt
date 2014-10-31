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
      check: False
      ca-file: "ca-certificates.crt"
      verify_host: www.pythonanywhere.com
      hsts: True
      extra:
        - http-request replace-header Host ^.*$ www.pythonanywhere.com

    hg:
      domains:
        - hg.python.org
      hsts: True

  listens:
    hg_ssh:
      bind: :20100
      service: hg-ssh
