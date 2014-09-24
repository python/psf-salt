haproxy:
  domains:
    hg.python.org:
      role: hg
      port: 9000  # Can we refactor this better?

  listens:
    hg_ssh:
      bind: :20100
      mode: tcp
      role: hg
      port: 22
