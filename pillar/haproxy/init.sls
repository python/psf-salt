haproxy:
  http:
    hg.python.org:
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 9000
      custom_frontends:
        - name: hg.python.org:http
          bind: :44930
          proto: http
        - name: hg.python.org:https
          bind: :44931
          proto: https

  tcp:
    "hg.python.org:ssh":
      bind: :44932
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 22

