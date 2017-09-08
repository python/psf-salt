pycon:
  deployment: staging
  branch: nl-css
  server_names:
    - staging-pycon.python.org
    - pycon-staging.python.org
    - pycon-staging.global.ssl.fastly.net
  use_basic_auth: True
  gunicorn_workers: 2
  progcom:
    email_from: noreplay@progcom-staging.us.pycon.org
    pg_user: progcom-staging
    pg_db: progcom-staging
    pycon_api_host: pycon-staging.python.org
    rooms: '{"A": 0, "C": 0, "B": 1, "E": 0, "D": 1}'
    room_schedules: '{"0": [{"11:30": 30, "10:50": 30, "15:15": 45, "16:30": 30, "13:55": 30, "14:35": 30, "12:10": 45, "17:10": 30}, {"11:30": 30, "10:50": 30, "15:15": 45, "16:30": 30, "13:55": 30, "14:35": 30, "12:10": 45, "17:10": 30}, {"13:10": 30, "13:50": 30, "14:30": 30}], "1": [{"11:30": 30, "13:40": 45, "14:35": 30, "15:15": 30, "17:10": 30, "10:50": 30, "16:15": 45, "12:10": 30}, {"11:30": 30, "13:40": 45, "14:35": 30, "15:15": 30, "17:10": 30, "10:50": 30, "16:15": 45, "12:10": 30}, {"13:10": 30, "13:50": 30, "14:30": 30}]}'
    web_host: python-staging.python.org

harden:
  umask: 022
