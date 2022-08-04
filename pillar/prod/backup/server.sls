backup-server:
  volumes:
    /dev/sda: /backup
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
    hg:
      directory: /backup/python-hg
      user: hg
      increment_retention: 90D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDS0sTCNKlCfJd/TyiKW3HRwTUouo3+PvPOK3ddyfpY17bJ4KdpaMZgc7fNg5VKzFvvuHBqjvVJsdewP3LesLOuaQCQoSu1DniLoodZGRdJ9gqgtbRZf4ekzsn7E7WZUnVI0fbofvFWjbPt3PSxVtm8hCqwmwia53Ehh9G3xRurDhNUqIjrGcTStM3kloQHjKing+EGdCqPvikuwN1eMZXyNnt4zuoU4e39JGCBqRBfXumvrYvYzuNbAN8OZtNAfByzLFJ6DIWq0ihK6WS/KRYKGKivaaK26whafutfv44bP0w3LvZZyTMGGqiS/zLNPx0tkYK3JEt4bpLlyHZHbIBh
    buildbot:
      directory: /backup/buildbot
      user: buildbot
      increment_retention: 90D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6ViDGniFFi9MeshjdKfh/qw3oXsYCLryh3t/wY9V43l209khYhXAh5k14QcbTu8b6H1MGNhq2jjMKLv2C2xzXubSZfUKFEhJp9MRG0xg3mxR9kGRu5wEmNbRavFKA2d0oiQFfMTRNUGCzPL5mn98EuFUuOtM+dMiXJ5eJdcFb5i0R8o31JzeaA37ogyYbmFYd20dsMlHEV7WdTILp0GeHxyq4t9NXMBu7cBvsLr4dSUQxlehTbHy5q0ZKWML0q1GVo65bAsTmh9byrEN5iUhWRRTTj/Pp9V15cYRtMc8qMTBNnDCKXtctfj3SuEUp47TCRbkyg2dFb/mUWCbVrgT9
    moin:
      directory: /backup/moin
      user: moin
      increment_retention: 90D
      authorized_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCr9RaD7FYNH4LSiC1d7UEwLo4o78+d8VZebRqsXfHH/J6xH6iBj8bEhzv08tVIVUb//T8fBM/N9bf9FYxiQPo/TouSkolaSNNkpPveXP3CtOUaR8f+W6C5Q4UfV0JRw0VRv7qfo5jjDpL7wMlq2wvI8ZS/0lODhUQg7TFUHSbaRM4j9CjokhQZLXoMa/V7M6S1OWjt9y3VrGNlT1EBAO/aQPmCNU8jStkJXvW/L9/jRU2RzTCGeuOBveKBe3HoXTaQbgqngilqZN+xfHNHtTMlF/KfgtZgl5l3C/nzlzkvBMSWOMiBLVtapUMdB6nNBAxY6Gb2OC5OjnMIoZ3X7efzKpasCJZ1mRwvaFU8XC2166+PVdWpj+UJ1Nv18Nl7Qzf3a04LOiV3s+0hxfYxDg1rsT+XyW/r65Tupp7u4MGgw1U/AtiH/Rsjl6IcGGsguMqQO6QlFcVPTTaEZvxAV54yMRlvzmc1hBDVbzKuUeE/yShpf1b9OsZODvyEjRFtDc=
