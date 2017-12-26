Server List
=====================

+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
|  Name                        | Purpose                                      | Contact     | Datacenter    | Region                  |
+==============================+==============================================+=============+===============+=========================+
| consul0.iad1.psf.io          | Runs https://www.consul.io/service discovery | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| consul1.iad1.psf.io          | Runs https://www.consul.io/service discovery | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| consul2.iad1.psf.io          | Runs https://www.consul.io/service discovery | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| docs.iad1.psf.io             | Builds and serves CPython's documentation    | benjamin    | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| lb0.iad1.psf.io              | Load Balancer                                | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| lb1.iad1.psf.io              | Load Balancer                                | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| lb2.iad1.psf.io              | Load Balancer                                | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| mail.python.org              | Mail and Mailman Server                      | postmasters | Digital Ocean | Amsterdam (AMS3)        |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| monitoring.iad1.psf.io       | Monitoring                                   | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| monitoring.pypi.io           | Monitoring.pypi.io                           | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| pg0.iad1.psf.io              | postgresql cluster                           | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| pg1.iad1.psf.io              | postgresql cluster                           | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| planet.iad1.psf.io           | Planet Python.                               | benjamin    | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| pydotorg-prod.iad1.psf.io    | Python.org production                        | benjamin    | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| pydotorg-staging.iad1.psf.io | Python.org staging                           | benjamin    | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| pythontest.nyc1.psf.io       | Test resources for CPython's test suite.     | benjamin    | Digital Ocean | New York City (NYC3)    |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| slack.iad1.psf.io            | Slack IRC bridge                             | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| speed-web.iad1.psf.io        | web interface for speed.python.org           | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| web0.pypa.iad1.psf.io        | Python Packaging Authority                   | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| web0.pypi.io                 | Holds bootstrap.pypa.io                      | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| web1.pypi.io                 | Backend servers for PyPI legacy              | dstufft     | Rackspace     | Northern Virginia (IAD) |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| evote.python.org             | PSF Voting Platform                          | mmangoba    | Rackspace     | Chicago (ORD)           |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-h669vt.psf.osuosl.org   | Loadbalancer OSUOSL                          | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| speed-python.osuosl.org      | Python Speed                                 | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-wzmlmm.psf.osuosl.org   | Advocacy                                     | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-gwhg4e.psf.osuosl.org   | Coverity                                     | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-ys0nco.psf.osuosl.org   | Wiki                                         | marc-andre  | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-et2yi0.psf.osuosl.org   | Buildmaster                                  | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-wdiwcy.psf.osuosl.org   | PyPy Codespeed                               | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-sxw5uy.psf.osuosl.org   | Load Balancer OSUOSL                         | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-k4b2sa.psf.osuosl.org   | rsnapshot                                    | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-8joqck.psf.osuosl.org   | RPI                                          | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-7tac5q.psf.osuosl.org   | PyPy Home                                    | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+
| virt-l99amx.psf.osuosl.org   | Monitoring OSUOSL                            | noah        | OSUOSL        | OSUOSL                  |
+------------------------------+----------------------------------------------+-------------+---------------+-------------------------+


SSH Fingerprints
================

We're generating an :download:`ssh_known_hosts` file of all servers by using::

  curl -s https://raw.githubusercontent.com/python/psf-salt/master/docs/list.rst | grep '|' | cut -d'|' -f2 | sed 1d | xargs -n 1 sh -c 'echo $0,$(dig +short $0)' | ssh-keyscan -f - | sort -u -

You can generate your own and diff both as they are sorted, or simply
use the provided one. To use the provided file you may use::

  ssh -o UserKnownHostsFile=docs/ssh_known_hosts -o StrictHostKeyChecking=yes docs.iad1.psf.io

Or add it to your ~/.ssh/config::

  Host *.psf.io *.python.org *.pypi.io *.osuosl.org
    UserKnownHostsFile ~/.ssh/psf_ssh_known_hosts
    StrictHostKeyChecking yes
