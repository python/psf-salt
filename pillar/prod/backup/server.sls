backup-server:
  volumes:
    /dev/xvdb: /backup
  backups:
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
    mail-python-org:
      directory: /backup/mail-python-org
      user: mail-python-org
      increment_retention: 15D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDN9voJiSP7mTsY8so/S8qMizKpJvLxFMWAyrYiTM41APvVpIU62JXfnU4nZxtPaDnqfyuXQzgYh7NgiqU7/OomQ5oyLzoZ6BH8kk4p1RT+tM1s9lR88jxalwSQqt7Av+p7qn4HuJkYAL0k0+AjHI559bFKtyDZYDpZz/JSP++keRqPXMtOk4Nd4z6KR18mzF5NV7rXNjHDExrpVb7kex8UVqXbNj8+dgl37PdXN4cAxlQoOALFbHxGGdxLqvJyalr1GZaxNRul6JUHaRFUkt6rVl90lp6+SO21i6hg5H3fL7eynJto6R0jDFiVNe6JfJs4XdXGYKIZlzhhqMOgbm0t
    python-bugs:
      directory: /backup/python-bugs
      user: python-bugs
      increment_retention: 30D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsMBXD2hOm536YI0GMSratv8cM1CZ1M3J1bsvj2NqD9PEp10o3FD5ofr81kB+BTyFKMnpwxuP/dcoCfiY4dCF1COIa82nUtvuklFYTVybW8dL7DevWxoX0F6PeK8Ox+kcuASjmgx2UJ/pisKEIhFQYTF4bmevSRXbLv94461dxOO6j2MOgtJRGDmr/2OhA30VAnjMw1U+4flZd6FLodfq1udX8NVTBg05BIAwLNYLFrvLO8yMlqZzb4TbA53w29yyNIoSlXBLtG+K19mAA3ki+rqZdhdS+k6u1/u0AVUcDvmX1MrOtcvucy74SIesBDJfdyR7OFpHmAx4/aDPVdmGV
