PSF Infrastructure Overview
===========================

The PSF runs a wide variety of infrastructure services to support its mission
from the `PyCon site <https://us.pycon.org>`_ to the `CPython Mercurial server
<https://hg.python.org>`_. The goal of this page is to enumerate all these
services, where they run, and who the main contact points are.

The Infrastructure Team
-----------------------

The infrastructure team is ultimately responsible maintaining PSF
infrastructure. It is not, however, required to be a member of the
infrastructure to run a PSF service. Indeed, the day to day operations of most
services are handled by people not on the infrastructure team. The
infrastructure team can assist in setting up new services and advise maintainers
of individual services. Its members also generally handle changes to sensitive
global systems such as DNS. The currrent team members are:

* Noah Kantrowitz (lead)
* Ernest W. Durbin III
* Benjamin W. Smith
* Donald Stufft
* Benjamin Peterson
* Alex Gaynor (has no responsibilities)

The best way to contact the infrastructure team is mailing
infrastructure-staff@python.org. There's also often people hanging out on the
#python-infra channel of `Freenode <http://freenode.net>`_.

Infrastructure Providers
------------------------

The PSF uses several different cloud providers and services for its infrastructure.

XS4ALL
   XS4ALL is the by far the oldest Python infrastructure provider. There are two
   physical servers owned by the PSF at XS4ALL: albatross and dinsdale. (There
   also used to be one called ximinez, but it seems to be unreachable now.)
   albatross is the mail server. dinsdale hosts a number of legacy services. We
   try not to put anything new on the XS4ALL servers, preferring modern cloud
   providers.

OSUOSL
   `Oregon State University Open Source Lab <http://osuosl.org/>`_ hosts VMs for
   the PSF. These VMs are provisioned using `Chef <http://www.getchef.com>`_ and
   their configuration management is in the `psf-chef git repo
   <https://github.com/python/psf-chef>`_.

Rackspace
   `Rackspace <http://www.rackspace.com>`_ is the newest cloud provider utilized
   by the PSF. It hosts PyPI and an increasing number of python.org-related
   services (Python downloads, docs.python.org). `Salt
   <http://www.saltstack.com>`_ is used for configuration management.

Dyn & Gandi
   `Gandi <http://www.gandi.net>`_ is our domain registar, and we use `Dyn
   <http://www.dyn.com>`_ for DNS hosting on most of our domains.

Pingdom
  `Pingdom <https://www.pingdom.com>`_ provides monitoring and complains to us
  when services are down.

Fastly
   `Fastly <http://www.fastly.com>`_ generously donates its content distribution
   network (CDN) to the PSF. Our highest traffic services (i.e. PyPI,
   www.python.org, docs.python.org) use this CDN to improve end-user latency.


Datacenters
-----------

====== ========= ======
PSF DC Provider  Region
====== ========= ======
iad1   Rackspace IAD
ord1   Rackspace ORD
====== ========= ======


Details of Various Services
---------------------------

This section enumerates PSF services, generalities about their hosting, and contact information for the owners.

Buildbot
   The `buildbot master <http://buildbot.python.org>`_ is a service run by
   python-dev@python.org, particularly Antoine Pitrou.

bugs.python.org
   bugs.python.org is hosted using a server donated by `Upfront Systems
   <http://www.upfrontsystems.co.za>`_. The tracker-discuss@python.org list is
   used for discussion of the tracker.

docs.python.org
   The Python documentation is hosted on a Rackspace VM, served through Fastly,
   and owned by Benjamin Peterson and Georg Brandl.

hg.python.org
   The CPython Mercurial repositories are hosted on a Rackspace VM. The service
   is owned by Antoine Pitrou and Georg Brandl.

mail.python.org
   The python.org `Mailman <http://list.org>`_ instance is hosted on
   https://mail.python.org as well as SMTP (Postfix). All inquiries should be
   directed to postmaster@python.org.

planetpython.org and planet.jython.org
   These are hosted on a Rackspace VM. The Planet code and configuration are
   `hosted on GitHub <https://github.com/python/planet>`_ and maintained by the
   team at planet@python.org.

pythontest.net
   `pythontest.net <www.pythontest.net>`_ hosts services and files used by the
   Python test suite. python-dev@python.org is ultimately responsible for its
   maintenance.

speed.python.org
   speed.python.org is a beefy machine sitting around at OSUOSL doing
   nothing. It needs love.

wiki.python.org
   This is hosted on an OSUOSL VM. Marc-André Lemburg owns it.

www.jython.org
   This is hosted on a Rackspace VM. The setup is quite simple and shouldn't
   require much tweaking, but Benjamin Peterson can be poked about it.

www.python.org
   The `main Python website <https://www.python.org>`_ is a Django app hosted on
   a Rackspace VM. Its source code is available on `GitHub
   <https://github.com/python/pythondotorg>`_, and issues with the site can be
   reported to the `GitHub issue tracker
   <https://github.com/python/pythondotorg/issues>`_. Python downloads
   (i.e. everything under https://www.python.org/ftp/) are hosted on a separate
   Rackspace VM. The whole site is behind Fastly. There is also
   https://staging.python.org for testing the site. http://legacy.python.org is
   the old website hosted on dinsdale.

PyCon
   The PyCon website is hosted on a OSUOSL VM. The contact address is
   pycon-tech@python.org.

PyPI
   The `Python Package Index <https://pypi.python.org/>`_ sees the most load of
   any PSF service. All of its infrastructure runs on Rackspace configured by
   `pypi-salt <https://github.com/python/pypi-salt>`_, and it is served over
   Fastly. The infrastructure is maintained by Ernest W. Durbin, Donald Stufft,
   and Richard Jones.

PyPy properties
   The `PyPy website <http://pypy.org>`_ is hosted on a OSUOSL VM and maintained
   by pypy-dev@python.org.
