haproxy:
  binds:
    http:
      bind: :51386
      proto: http
    https:
      bind: :38303 ssl crt /etc/ssl/private/ev.python.org.pem
      proto: https
    hg:
      bind: :44931 ssl crt /etc/ssl/private/hg.python.org.pem
      proto: https

  http:
    hg.python.org:
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 9000

  tcp:
    "hg.python.org:ssh":
      bind: :44932
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 22
