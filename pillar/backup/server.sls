backup-server:
  volumes:
    /dev/xvdb: /backup
  backups:
    jython-web:
      directory: /backup/jython-web
      user: jython-web
      increment_retention: 7D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClOcS0Oqdk7NxEPjVuOb0UUNYdMmxCDQx7xoMAM/7E1hh9tmk6Wzi+DjekDm7MoeZ9wE0WP866ec7pJ98EJdUOWSdYjpLtwXI3WZQ07TuTBKT8wMbvFPZl+h3sK3FYn2DcJbna7hh2Ymh6KrutadbqKe2bwnAC4D/zt0krS1t9hWN1DFlxkwQGkPRRzsPR9x+Tur/xR7lVGwP/ilU+5Vt7Q8AQlJDPKFe+hzmq9yZZYt46OzZtqDiSLpyDrTVYZ/eQXw+/Mv9JoLcGNfLW8485Pmx3UGx1kscVBdsAG0ELOnFBCHNvCMPCSh3UjPdlU+wF2tRKfTw9owiajKP/vTDT
    docs:
      directory: /backup/python-docs
      user: python-docs
      increment_retention: 7D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhlpt0GMToIVMYBg5IvxXEE+D5rQQQEQxqzd8GFjA7GivE7jmxJJFHzDB+lA9mlaWEseNhDakzOma6PxDNdJ9lrBHDb/PeA/++oMsoQ2nU5BAbESXCrkSz9I6wh01oKGF4TytQNek4mv41R97eQioLRYFXsG0CvYsccudyQVwpDkhk/pBW3pqGudtY8JM3bjJI85EwcarQdqPj6dLy8STx8lTuOcSAOhLY5EPG34ZciHf3uFlgg6TYAkh5m8nT6nKEYsswQJIGqfJnLuTQVBuUODJ/tLQzjiOAPTcIKPJArPf/lAxqhuu6kiTX4aRl/gN68GnOvrgDvWbjVBXw3hrN
    downloads:
      directory: /backup/python-downloads
      user: downloads
      increment_retention: 365D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCezDzZ3nfM5NpU6qAGXkU5122LmZHfe2+KjAdtgZr06OC9ke1kRO6mb+49JwO22zBxhdVOFEwiQsmtaeT3qh3FEcRB94rzvmBxwKiPuySMve4X7S+M/ozXDcJcdKnZ9jPwle2rJ9wag/0/6uCZtlHJFh0DZ4UI5Ttw6Pwq+X0T5ropD7i78OAbsaUn+lXU6k+ehIsWWjYjS/k8WFXW4WgMXchXk5AZYG7ZAOyWLLbmzDXMEqMmWe83EAArSF2fWOs1LoGyYRx4S1BVOo9w9HVAcbIPiccX0AtWLKzByoZ8fUILxdLmMeDrqohZXtbU/ci6V+AEBwNLRZsmvpfMeEJd
    hg:
      directory: /backup/python-hg
      user: hg
      increment_retention: 90D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDS0sTCNKlCfJd/TyiKW3HRwTUouo3+PvPOK3ddyfpY17bJ4KdpaMZgc7fNg5VKzFvvuHBqjvVJsdewP3LesLOuaQCQoSu1DniLoodZGRdJ9gqgtbRZf4ekzsn7E7WZUnVI0fbofvFWjbPt3PSxVtm8hCqwmwia53Ehh9G3xRurDhNUqIjrGcTStM3kloQHjKing+EGdCqPvikuwN1eMZXyNnt4zuoU4e39JGCBqRBfXumvrYvYzuNbAN8OZtNAfByzLFJ6DIWq0ihK6WS/KRYKGKivaaK26whafutfv44bP0w3LvZZyTMGGqiS/zLNPx0tkYK3JEt4bpLlyHZHbIBh
