PostgreSQL
==========

The Python Infrastructure uses PostgreSQL databases to services hosted in the
DigitalOcean datacenter.

* Currently running hosted PostgreSQL 11 provided by DigitalOcean databases.

* App nodes have pgbouncer running on it pooling connections.

  * The actual database user and password is only known to pgbouncer, each
    node will get a unique randomly generated password for the app to connect
    to pgbouncer.


Local Tooling
-------------

For roles which require postgresql, the ``postgresql-primary`` vagrant machine
can be booted to provide similar infrastructure to the DigitalOcean hosted
Postgres.


Creating a New Database
-----------------------

#. Edit ``pillar/postgresql/server.sls`` and edit the ``databases`` dictionary
   to include a new entry where the left side is the name of the database you
   wish to create, and the right hand side is the name of the user to create.
#. Edit ``pillar/secrets/postgresql-users/all.sls`` to add a new entry for
   the username with a randomly generated password.


Giving Applications Access
--------------------------

#. Create a sls under ``pillar/{dev,prod}/secrets/postgresl-users`` for the
   role for the application and add it to ``pillar/{dev,prod}/top.sls``.
#. Add the ``postgresql.client`` state to the role for the application or to
   the states for the application.
#. Setup the application to the connect the server(s), there is one primary
   read/write server and zero or more (currently one) read only slaves. The
   addresses for this can be discovered using the service discovery mechanisms
   detailed `here </services/discovery/>`_.

   .. code-block:: text

    dattabases:
      {{with service "primary.postgresql@aid1"}}
      primary: {{ "{{(index . 0).Address}}" }}:{{ "{{(index . 0).Port}}" }}
      {{end}}
      read_only:
        {{range service "replica.postgresql@aid1"}}
        - {{.Address}}:{{.Port}}{{end}}

   Clients should also be configured with ``sslmode = verify-full``,
   ``sslrootcert = /etc/ssl/certs/PSF_CA.pem``, and
   ``host = postgresql.psf.io``. The ip addresses from above should be
   configured as ``hostaddr`` instead of ``host``. This will ensure that the
   client will connect via TLS, verify the certificate is valid and from our
   internal CA, and will verify that it is for the postgresql server. An
   example of this in Django is:

   .. code-block:: python

      DATABASES = {
          "default": {
              "ENGINE": "django.db.backends.postgresql_psycopg2",
              "HOST": "postgresql.psf.io",
              "NAME": "dbname",
              "USER": "dbname",
              "PASSWORD": "the password",
              "OPTIONS": {
                  "hostaddr": "192.168.50.1",
                  "sslmode": "verify-full",
                  "sslrootcert": "/etc/ssl/certs/PSF_CA.pem",
              },
          },
      }
