Opening a port
==============

1.  Ensure the `salt-master` can be brought up with vagrant locally:
    ```console
    vagrant up salt-master
    ```
2.  `vagrant ssh` into `salt-master` and confirm the service in question is running and listening on the desired port:
    ```console
    vagrant ssh salt-master
    sudo netstat -tlnp | grep 9001
    ```
    Should show something like:
    ```console
    $ tcp    0   0 0.0.0.0:9001      0.0.0.0:*        LISTEN   621968/nginx: maste
    ```
3.  Check the firewall to confirm the desired port is closed
    ```console
    sudo iptables -L -xvn
    ```
    Should show something like:
    ```console
    $ 86131 5167860 ACCEPT   tcp -- *   *    192.168.50.0/24   0.0.0.0/0      state NEW tcp dpts:9000
    ```
4. In the **local repository**, edit the firewall settings by navigating to
  `pillar/base/firewall` and editing the [`salt.sls`][firewall-config]
  file to include the desired port:
    ```console
    vim pillar/base/firewall/salt.sls
    ```
5. On the `salt-master` run `highstate` to validate your changes and check the firewall to verify those changes:
    ```console
    vagrant ssh salt-master
    sudo salt-call state.highstate
    ```
    ```console
    sudo iptables -L -xvn
    ```
    Should show something like:
    ```
     86131 5167860 ACCEPT  tcp -- * *  192.168.50.0/24 0.0.0.0/0 state NEW tcp dpts:9000:9001
    ```

[//]: # (Quicklink targets)
[firewall-config]: https://github.com/python/psf-salt/blob/main/pillar/base/firewall/salt.sls