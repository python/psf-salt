codespeed-instances:
  cpython:
    hostname: speed.python.org
    db_user: codespeed-cpython
    db_name: codespeed-cpython
    port: 9000
    source: https://github.com/python/codespeed.git
    source_ref: speed.python.org
    python_version: python3
    module: speed_python
    wsgi_app: speed_python.wsgi:application
    clones:
      git:
        cpython:
          source: https://github.com/python/cpython.git
      hg: {}
  pypy:
    hostname: speed.pypy.org
    db_user: codespeed-pypy
    db_name: codespeed-pypy
    port: 9001
    source: https://github.com/python/codespeed.git
    source_ref: speed.pypy.org
    python_version: python3
    module: speed_pypy
    wsgi_app: speed_pypy.wsgi:application
    clones:
      git: {}
      hg:
        pypy:
          source: https://foss.heptapod.net/pypy/pypy
