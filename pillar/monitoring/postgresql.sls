diamond-extra:
  packages:
    - python-psycopg2

  collectors:
    Postgresql:
      enabled: True
      extended: True
      host: null
      user: diamond
      password: None
      interval: 30

