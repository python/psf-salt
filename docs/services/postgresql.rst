PostgreSQL
==========

The Python Infrastructure offers PostgreSQL databases to services hosted in the
Rackspace datacenter.


* Currently running PostgreSQL 9.3

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

#. Create a sls under ``pillar/secrets/postgresl-users`` for the role for the
   application and add it to ``pillar/top.sls``.
#. Create a sls under ``pillar/pgbouncer`` for the role for the application
   and add it to the ``pillar/top.sls``.
#. Edit ``salt/postgresql/server/configs/pg_hba.conf.jinja`` to add an entry
   for this application using the salt mine to locate IP addresses for all the
   servers with the role.
#. Add the ``postgresql.client`` state to the role for the application.
#. Reference
   ``{{ salt["grains.get_or_set_hash"]("postgresql:pgb_name", length=50) }}``
   anyplace within the application where you need the password for the
   database. Replace ``pgb_name`` with the name you chose in the
   ``pillar/pgbouncer`` sls.

   .. note:: It appears that when ``grains.get_or_set_hash`` actually creates
             the hash the first time it returns a dictionary instead of a
             string. This will cause states to fail. This can be worked around
             by doing:

             .. code-block:: jinja

                {% set ignored = salt["grains.get_or_set_hash"]("postgresql:pgb_name", length=50) %}
                password = {{ salt["grains.get_or_set_hash"]("postgresql:pgb_name", length=50) }}


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
