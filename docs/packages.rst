APT Packages
============

PSF Infrastructure has the ability to create apt repositories stored on S3.
The primary one of these is named "psf" and it is located at
``http://apt.psf.io/psf/``. The psf repository has been added to all servers by
default and can be used to ship things which are not available in Ubuntu or a
ppa or for which there are patched versions required.


Install from the PSF repository
-------------------------------

Generally nothing different needs to happen to install from the PSF repository,
just a simple ``apt-get install <something>`` or adding it to a salt state
should pick up the package automatically.


Uploading to the PSF repository
-------------------------------

In order to upload to the PSF repository you must be a member of the
``aptly-uploaders`` group. You can add yourself to this group by simply editing
``pillar/users.sls`` and adding:

.. code-block:: yaml

    access:
      packages:
        groups:
          - aptly-uploaders

below your user account.


After you're a member of that ``aptly-uploaders`` group, you can upload a
``.deb`` or a ``.dsc`` file by simplying placing it in the
``/srv/aptly/incoming/psf-trusty/`` or ``/srv/aptly/incoming/psf-precise/``
directory on the packages.psf.io server depending on if the package is for
trusty or precise. For example:

.. code-block:: console

    $ scp python-wal-e_0.7.2-2_all.deb packages.psf.io:/srv/aptly/incoming/psf-trusty/

Every 5 minutes ``packages.psf.io`` will scan this directory for new files,
process them and then they will be available in the PSF repository.
