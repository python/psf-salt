Opening a port
==============

1.  Ensure the salt-master can be brought up with vagrant locally. 

-   `laptop:psf-salt user$ vagrant up salt-master`

2.  Vagrant ssh into salt-master and confirm the service in question is running and listening on the desired port.

-   `laptop:psf-salt user$ vagrant ssh salt-master`

-   `vagrant@salt-master:~$ sudo netstat -tlnp | grep 9001`

tcp        0      0 0.0.0.0:9001            0.0.0.0:*               LISTEN      621968/nginx: maste

3.  Check the firewall to confirm the desired port is closed

-   `vagrant@salt-master:~$ sudo iptables -L -xvn`  

```
   86131  5167860 ACCEPT     tcp  --  *      *       192.168.50.0/24      0.0.0.0/0            state NEW tcp dpts:9000
```

4.  In the local repository, edit the firewall settings by navigating to pillar/base/firewall and editing the salt.sls file to include the desired port

`laptop:psf-salt user$ vim pillar/base/firewall/salt.sls`

5. On the vagrant box run 'sudo salt-call state.highstate' to validate your changes and check the firewall to verify those changes.

- `vagrant@salt-master:~$ sudo iptables -L -xvn`

```
 86131 5167860 ACCEPT  tcp -- * *  192.168.50.0/24 0.0.0.0/0 state NEW tcp dpts:9000:9001
```
