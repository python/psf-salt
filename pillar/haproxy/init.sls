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

    pypi.python.org:
      bind: :43118
      options:
        - tcplog
        - httpchk
      servers:
        - name: web0.pypi.io
          address: 172.16.57.8  # web0.pypi.io pypi-internal address
          port: 40713
        - name: web1.pypi.io
          address: 172.16.57.9  # web1.pypi.io pypi-internal address
          port: 40713
        - name: web2.pypi.io
          address: 172.16.57.1  # web2.pypi.io pypi-internal address
          port: 40713

