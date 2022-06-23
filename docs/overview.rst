PSF Infrastructure Overview
===========================

The PSF runs a wide variety of infrastructure services to support its mission
from the `PyCon site <https://us.pycon.org>`_ to the `CPython Mercurial server
<https://hg.python.org>`_. The goal of this page is to enumerate all these
services, where they run, and who the main contact points are.

The Infrastructure Team
-----------------------

The infrastructure team is ultimately responsible for maintaining PSF
infrastructure. It is not, however, required to be a member of the
infrastructure to run a PSF service. Indeed, the day to day operations of most
services are handled by people not on the infrastructure team. The
infrastructure team can assist in setting up new services and advise maintainers
of individual services. Its members also generally handle changes to sensitive
global systems such as DNS. The currrent team members are:

* Alex Gaynor (has no responsibilities)
* Benjamin Peterson
* Benjamin W. Smith
* Chloe Gerhardson (PSF Infrastructure Engineer)
* Donald Stufft
* Ee Durbin (PSF Director of Infrastructure)
* Noah Kantrowitz

The best way to contact the infrastructure team is mailing
infrastructure-staff@python.org. There's also often people hanging out on the
#python-infra channel of `Libera <https://libera.chat>`_.

Infrastructure Providers
------------------------

The PSF uses several different cloud providers and services for its infrastructure.

Fastly
   `Fastly <http://www.fastly.com>`_ generously donates its content distribution
   network (CDN) to the PSF. Our highest traffic services (i.e. PyPI,
   www.python.org, docs.python.org) use this CDN to improve end-user latency.

DigitalOcean
   `DigitalOcean <https://digitalocean.com>`_ is the current primary hosting
   for most of the infrastructure, services deployed here
   are managed by `Salt <http://www.saltstack.com>`_.

Heroku
   `Heroku <https://heroku.com>`_ hosts many of the CPython core workflow bots,
   ephemeral or proof of concept apps, as well as other web apps that are well
   suited to it's platform.

Gandi
   `Gandi <http://www.gandi.net>`_ is our domain registar

Amazon Route 53
   `Amazon Route 53 <https://aws.amazon.com/route53/>`_ hosts DNS for all domains.
   It is currently manually managed by Infrastructure Staff.

DataDog
   `DataDog <https://www.datadoghq.com>`_ provides metrics, dashboards, and alerts.

Pingdom
  `Pingdom <https://www.pingdom.com>`_ provides monitoring and complains to us
  when services are down.

PagerDuty
  `PagerDuty <https://www.pagerduty.com>`_ is used for on-call rotation for PSF
  Infrastructure employees on the front-line, and volunteers as backup.

OSUOSL
   `Oregon State University Open Source Lab <http://osuosl.org/>`_ hosts one
   hardware server for the PSF, used by speed.python.org for running benchmarks
   This host was provisioned using `Chef <http://www.getchef.com>`_ and
   their configuration management is in the `psf-chef git repo
   <https://github.com/python/psf-chef>`_.


Datacenters
-----------

====== ============= ======
PSF DC Provider      Region
====== ============= ======
ams1   Digital Ocean AMS3
nyc1   Digital Ocean NYC3
sfo1   Digital Ocean SFO2
====== ============= ======


Details of Various Services
---------------------------

This section enumerates PSF services, generalities about their hosting, and contact information for the owners.

Buildbot
   The `buildbot master <http://buildbot.python.org>`_ is a service run by
   python-dev@python.org, particularly Antoine Pitrou and Zach Ware.

bugs.python.org
   bugs.python.org is hosted by the PSF on DigitalOcean, powered by Roundup.
   It also hosts bugs.jython.org and issues.roundup-tracker.org.

docs.python.org
   The Python documentation is hosted on DigitalOcean, served through Fastly,
   and owned by Julien Palard.

hg.python.org
   The CPython Mercurial repositories are hosted on a Digital Ocean VM. The service
   is owned by Antoine Pitrou and Georg Brandl.

mail.python.org
   The python.org `Mailman <http://list.org>`_ instance is hosted on
   https://mail.python.org as well as SMTP (Postfix). All inquiries should be
   directed to postmaster@python.org.

planetpython.org and planet.jython.org
   These are hosted on a DigitalOcean VM. The Planet code and configuration are
   `hosted on GitHub <https://github.com/python/planet>`_ and maintained by the
   team at planet@python.org.

pythontest.net
   `pythontest.net <www.pythontest.net>`_ hosts services and files used by the
   Python test suite. python-dev@python.org is ultimately responsible for its
   maintenance.

speed.python.org
   speed.python.org is a `Codespeed <https://github.com/tobami/codespeed>`_
   `instance <https://github.com/zware/codespeed>`_ tracking Python performance.
   The web interface is hosted on a DigitalOcean VM, benchmarks are run on a beefy
   machine at OSUOSL and scheduled by the Buildbot master.  Maintained by
   speed@python.org and Zach Ware.

wiki.python.org
   This is hosted on an DigitalOcean VM. Marc-André Lemburg owns it.

www.jython.org
   This is hosted from an Amazon S3 Bucket. The setup is quite simple and shouldn't
   require much tweaking, but Infrastructure Staff can be poked about it.

www.python.org
   The `main Python website <https://www.python.org>`_ is a Django app hosted on
   Heroku. Its source code is available on `GitHub
   <https://github.com/python/pythondotorg>`_, and issues with the site can be
   reported to the `GitHub issue tracker
   <https://github.com/python/pythondotorg/issues>`_. Python downloads
   (i.e. everything under https://www.python.org/ftp/) are hosted on a separate
   DigitalOcean VM. The whole site is behind Fastly. There is also
   https://staging.python.org for testing the site. http://legacy.python.org is
   the old website hosted from a static mirror.

PyCon
   The PyCon website is hosted on Heroku. The contact address is
   pycon-site@python.org.

PyPI
   The `Python Package Index <https://pypi.org/>`_ sees the most load of
   any PSF service. Its source code is available `on GitHub
   <https://github.com/pypa/warehouse>`_. All of its infrastructure runs on
   AWS configured by `pypi-infra <https://github.com/python/pypi-infra>`_,
   and it is fronted by Fastly. The infrastructure is maintained by Ee Durbin,
   Donald Stufft, and Dustin Ingram. The contact address is admin@pypi.org.

PyPy properties
   The `PyPy website <http://pypy.org>`_ is hosted on a DigitalOcean VM and maintained
   by pypy-dev@python.org.
