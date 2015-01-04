PostgreSQL
==========

The Python Infrastructure offers PostgreSQL databases to services hosted in the
Rackspace datacenter.


* Currently running PostgreSQL 9.4

* Operates a 2 node cluster with a primary node configured with streaming
  replication to a replica node.

  * Each node is running a 15 GB Rackspace Cloud Server.

* Each app node has pgbouncer running on it pooling connections.

  * The actual database user and password is only known to pgbouncer, each
    node will get a unique randomly generated password for the app to connect
    to pgbouncer.

* The primary node also backs up to Rackspace CloudFiles in the ORD region
  via WAL-E. A full backup is done once a week via a cronjob and WAL-E does
  WAL pushes to fill in between the full backups.



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


Application Integration
-----------------------

The PostgreSQL has been configured to allow an application to integrate with it
to get some advanced features.


(A)synchronous Commit
~~~~~~~~~~~~~~~~~~~~~

By default the PostgreSQL primary will ensure that each transaction is commited
to persistent storage on the local disk before returning that a transaction
has successfully been commited. However it will asynchronously replicate that
transaction to the replicas. This means that if the primary server goes down
in a way where the disk is not recoverable prior to replication occuring than
that data will be lost.

Applications may optionally, on a per transaction basis, request that the
primary server has either given the data to a replica server or that a replica
server has also written that data to persistent storage.

This can be acchived by executing:

.. code-block:: plpgsql

    -- Set the transaction so that a replica will have received the data, but
    -- not written the data out before the primary says the transaction is
    -- complete.
    SET LOCAL synchronous_commit TO remote_write;

    -- Set the transaction so that a replica will have written the data to
    -- persistent storage before the primary says the transaction is complete.
    SET LOCAL synchronous_commit TO on;

Obviously each of these options will mean the write will fail if the primary
cannot reach the replica server. These options can be used when ensuring data
is saved is more important than uptime with the minimal risk the primary goes
completely unrecoverable.
