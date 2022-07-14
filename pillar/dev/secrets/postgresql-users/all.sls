postgresql-users:
  codespeed-cpython:
    cluster: pg-vagrant-psf-io
    dbname: codespeed-cpython
    password: insecurepasswordlol
  codespeed-pypy:
    cluster: pg-vagrant-psf-io
    dbname: codespeed-pypy
    password: insecurepasswordlol
  roundup-cpython:
    cluster: pg-vagrant-psf-io
    dbname: roundup-cpython
    password: insecurepasswordlol
  roundup-jython:
    cluster: pg-vagrant-psf-io
    dbname: roundup-jython
    password: insecurepasswordlol
  roundup-roundup:
    cluster: pg-vagrant-psf-io
    dbname: roundup-roundup
    password: insecurepasswordlol
  roundup-cpython_test:
    cluster: pg-vagrant-psf-io
    dbname: roundup-cpython_test
    password: insecurepasswordlol
  buildbot-master:
    cluster: pg-vagrant-psf-io
    dbname: buildbot-master
    password: insecurepasswordlol
  buildbot-master_test:
    cluster: pg-vagrant-psf-io
    dbname: buildbot-master_test
    password: insecurepasswordlol

postgresql-superusers:
  salt-master:
    password: insecurepasswordlol

postgresql-replicator: insecurereplicatorpasswordlol
