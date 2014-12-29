# This a mapping of role names to TLS certificates that are required for that
# particular role.

tls:
  ciphers:
    default: ECDH+AESGCM:DH+AESGCM:ECDH+AES256:DH+AES256:ECDH+AES128:DH+AES:!AES256:!aNULL:!eNULL:!MD5:!DSS:!PSK:!SRP

  # We should drop the SHA1 options here once we've fully migrated off of SHA1
  pins:
    # DigiCert High Assurance EV Root CA
    - WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18=
    # StartCom Certification Authority (SHA1)
    - 5C8kvU039KouVrl52D0eZSGf4Onjo4Khs8tmyTlV3nU=
    # StartCom Certification Authority (SHA2)
    - 5C8kvU039KouVrl52D0eZSGf4Onjo4Khs8tmyTlV3nU=
    # AddTrust External CA Root (Comodo)
    - lCppFqbkrlJ3EcVFAkeip0+44VaoJUymbnOaEUk7tEU=
    # UTN-USERFirst-Hardware (Comodo, SHA1)
    - TUDnr0MEoJ3of7+YliBMBVFB4/gJsv5zO7IxD9+YoWI=
    # USERTrust RSA Certification Authority (Comodo, SHA2)
    - x4QzPSC810K5/cMjb05Qm4k3Bw5zBn4lTdO/nEW/Td4=

  gen_certs:
    consul.psf.io:
      roles:
        - consul

    docs.psf.io:
      roles:
        - docs

    downloads.psf.io:
      roles:
        - downloads

    pydotorg.psf.io:
      roles:
        - pydotorg

    hg.psf.io:
      roles:
        - hg

    lb.psf.io:
      roles:
        - loadbalancer

    postgresql.psf.io:
      days: 7
      roles:
        - postgresql

    speed-web.psf.io:
      roles:
        - speed-web

    bootstrap.pypa.psf.io:
      roles:
        - web-pypa
