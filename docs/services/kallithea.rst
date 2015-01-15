Kallithea
=========

Development:
------------

From psf-salt dir do::

    $ vagrant up salt-master
    $ vagrant up kallithea
    $ vagrant ssh kallithea
    vagrant@kallithea:~$ w3m http://127.0.0.1:80


Now you can sign in as a test admin user::

    * User: admin1
    * password: admin1



F.A.Q:
^^^^^^

*How to make it visible outside kallithea machine, I mean from host machine?*

    You should forward port, which means adding this line to VagrantFile::

        s_config.vm.network "forwarded_port", guest: 80, host: 8000

    See more details: https://docs.vagrantup.com/v2/getting-started/networking.html
