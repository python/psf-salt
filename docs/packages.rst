APT Packages
============

PSF Infrastructure has an apt repository located at ``apt.psf.io``. This is
added to all servers by default and can be used to ship things which are not
available by default in Ubuntu or for which there are patched versions
required.


Install from apt.psf.io
-----------------------

Generally nothing different needs to happen to install from apt.psf.io, just
a simple ``apt-get install <something>`` or adding it to a salt state should
pick up the package automatically.


Uploading to apt.psf.io
-----------------------

In order to upload to ``apt.psf.io`` you must be a member of the
``aptly-uploaders`` group. You can add yourself to this group by simply editing
``pillar/users.sls`` and adding:

.. code-block:: yaml

    access:
      "roles:apt":
        groups:
          - aptly-uploaders

below your user account.


After you're a member of that ``aptly-uploaders`` group, you can upload a
``.deb`` or a ``.dsc`` file by simplying placing it in the
``/srv/aptly/incoming/psf/`` directory. For example:

.. code-block:: console

    $ scp python-wal-e_0.7.2-2_all.deb apt.psf.io:/srv/aptly/incoming/psf/

Every 5 minutes ``apt.psf.io`` will scan this directory for new files, process
them and then they will be available at ``apt.psf.io``.
