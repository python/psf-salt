APT Packages
============

PSF Infrastructure utilizes an apt repository for serving additional debian
packages or versions not available from our upstream distributions.

This repository is hosted on `packagecloud <https://packagecloud.io>`_ at
`https://packagecloud.io/psf/infra <https://packagecloud.io/psf/infra>`_.

The psf/infra repository has been added to all servers by default and can be
used to ship things which are not available in Ubuntu or a ppa or for which
there are patched versions required.


Install from the PSF repository
-------------------------------

Generally nothing different needs to happen to install from the PSF repository,
just a simple ``apt-get install <something>`` or adding it to a salt state
should pick up the package automatically.


Uploading to the PSF repository
-------------------------------

Access to the packagecloud repository is managed by the PSF Infrastructure
Team. Packages can be uploaded by providing them to the team, or if a
contributor consistently contributes to this repository, they may create a user
with packagecloud.io and have their user added to the team.
