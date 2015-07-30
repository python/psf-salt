pycon:
  deployment: prod
  branch: salt_deploy
  server_names:
    - us.pycon.org
    - pycon-prod.global.ssl.fastly.net

harden:
  umask: 022
