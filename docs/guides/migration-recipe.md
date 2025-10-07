Migrating to new host
=====================

## Prepare salt configuration for migration

1. Ensure that `salt-master`, `loadbalancer`, and host in question can be brought up with vagrant locally, and that their 
  health check for the relevant service is failing in `haproxy` after the host is fully up
    ```console
    vagrant up salt-master
    vagrant up loadbalancer
    vagrant up host
    ```

   To view `haproxy` status:
  
   - `vagrant up` the `salt-master`, `loadbalancer`, and host in question:
     ```console
     vagrant up salt-master
     vagrant up loadbalancer
     ```
   - Prepare an SSH configuration file to access the host with native ssh commands: 
     ```console
     vagrant ssh-config salt-master loadbalancer >> vagrant-ssh
     ```
   - Open an SSH session with port forwarding to the `haproxy` status page:
        ```console
        ssh -L 4646:127.0.0.1:4646 -F vagrant-ssh loadbalancer
        ```
   - View the `haproxy` status page in your browser [`http://localhost:4646/haproxy?stats`][loadbalancer]

2. Edit pillar data for `roles.sls` to include both old and new hostnames (ex. `hostname*`)

```
diff --git a/pillar/prod/roles.sls b/pillar/prod/roles.sls
index 68387c9..7a8ace1 100644
--- a/pillar/prod/roles.sls
+++ b/pillar/prod/roles.sls
@@ -35,7 +35,7 @@ roles:
     purpose:  "Builds and serves CPython's documentation"
     contact:  "mdk"
   downloads:
-    pattern:  "downloads.nyc1.psf.io"
+    pattern:  "downloads*.nyc1.psf.io"
     purpose:  "Serves python.org downloads"
     contact:  "CPython Release Managers"
   hg:
```

## Migrate the host

### Update Salt Master with the latest config including prep from above

1.  SSH into the salt-master server `ssh salt.nyc1.psf.io`
    ```console
    ssh salt.nyc1.psf.io
    ```
2.  Navigate to `srv/psf-salt`
    ```console
    cd /srv/psf-salt
    ```
3.  Pull the latest changes from the repository
    ```console
    sudo git pull
    ```
4.  Run `highstate` to update the role settings to reflect the new matching pattern, as well as additional changes to support migration:
    ```console
    sudo salt-call state.highstate
    ```

### Ensure new configuration doesn't impact host being migrated

1.  SSH into the `old-host`:
    ```console
    ssh old-host
    ```
2.  Run `highstate`:
    ```console
    sudo salt-call state.highstate
    ```

### Create a new host
1.  Start a new droplet in digital ocean, and check resources being used on old host to see if we are over or under spending on resources
2.  Create a new droplet with a new version of Ubuntu, appropriate resources, and name it according to a hostname + current LTS version
    - See the current preferred version of Ubuntu in [the Server Guide](server.rst)

#### Provision new host for migration

1. SSH into `new-host` via the IP address provided by DigitalOcean:
    ```console
    ssh root@NNN.NNN.NNN.NNN
   ```
2. Add Salt repositories for our current target version (add the apt-repo and install `salt-minion` package):
    > **Note**: Ensure you are adding the correct key/repository for the version of Ubuntu you are using. 
    >
    > See [the Salt installation guide](https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/ubuntu.html) for more information.
    ```console
    UBUNTU_VERSION=$(lsb_release -rs)
    ARCH=$(dpkg --print-architecture)
    CODENAME=$(cat /etc/os-release | grep VERSION_CODENAME | cut -d '=' -f 2)
   
    echo "Adding the SaltStack repository key for $UBUNTU_VERSION $CODENAME ($ARCH)..."
    sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring-2024.gpg https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public
    echo "Adding the SaltStack repository for $UBUNTU_VERSION $CODENAME ($ARCH)..."
    echo "deb [signed-by=/etc/apt/keyrings/salt-archive-keyring-2024.gpg arch=$ARCH] https://packages.broadcom.com/artifactory/saltproject-deb/ stable main" | sudo tee /etc/apt/sources.list.d/salt.list
    echo "Pinning Salt to v3006.*"
    RUN printf "Package: salt-*\nPin: version 3006.*\nPin-Priority: 1001\n" > /etc/apt/preferences.d/salt-pin-1001
    ```
3. Install and configure the salt-minion. On `$new-host`, run the command
    ```console
    apt-get update -y && apt-get install -y --no-install-recommends salt-minion
    ```
    - On the `old-host`, look through `/etc/salt/minion.d*` to set up salt-minion configuration files to match on new-host:
      - Generate bash that will create these files
      ```console
      for file in /etc/salt/minion.d/*; do echo -e "cat > $file <<EOF"; sudo cat $file; echo "EOF"; done
      ```
      - Copy and paste the generated commands to create and populate the files on `new-host` 
4. Restart the `salt-minion` service on the **new host** to pick up the configuration and register with salt-master:
    ```console
    sudo service salt-minion restart
    ```
5. On **`salt-master`**, accept the key for the new-host:
    ```console
    sudo salt-key -a new-host
    ```
6. On the **`new-host`**, run `highstate`:
    ```console
    sudo salt-call state.highstate
    ```
7. Log out of `root` session. The first `highstate` run adds the users defined in `pillar/base/users.sls` so that you 
    can log in as your user.
8. Ensure that the new host is not passing health checks in the load balancer:
    ```console
    ssh -L 4646:127.0.0.1:4646 lb-a.nyc1.psf.io
    ```
   - Then view the `haproxy` status page in your browser [`http://localhost:4646/haproxy?stats`][loadbalancer]
9.  Run `hightstate` on the `salt-master` to create a public dns record for the new host
    ```console
    sudo salt-call state.highstate
    ```

#### Begin data migration to new host

1.  SSH into `new-host` to enable forwarding of `ssh-agent`
    ```console
    ssh -A new-host
    ```
2.  Stop cron jobs `user@new-host:~$ sudo service cron stop`
    ```console
    sudo service cron stop
    ```
3.  Stop public-facing services, like `nginx`, or the service the health check is looking for. 
    - Use this command as an example: 
    ```console
    sudo service nginx stop
    ```
    ```{note}
    Don't forget to pause service checks for both the old and new hosts in things like Sentry monitors, Pingdom, etc.
    ```
4.  Ensure that any additional volumes are mounted and in the correct location: 
    - Check what disks are currently mounted and where: `df`
    - Determine where any additional disks should be mounted (based on salt configuration of services, for example `docs` and `downloads` roles need a big `/srv` for their data storage
    - Ensure mounting of any external disks are in the right location using `mount` command with appropriate arguments
    - Ensure that the volumes will be remounted on startup by configuring them in `/etc/fstab`
5.  If the service has pillar data for backups (see `pillar/prod/backup/$service.sls`), 
    run `rsync` once to move the bulk of data and as necessary to watch for changes:
    ```console
    sudo -E -s rsync -av --rsync-path="sudo rsync" username@hostname:/pathname/ /pathname/
    ```
    - The `/pathname/` can be determined by looking at the pillar data for backups, `pillar/prod/backup` using the 
      `source_directory` path for the given host (example: the `downloads` host uses `/srv/`)
    - ```{note}
      Don't forget to enable SSH forwarding to allow the `rsync` command to use the local SSH key to connect to the old host.
      ```
### Stop services on old host

1.  SSH into `old-host`:
    ```console
    ssh old-host
    ```
2.  Stop cron jobs:
    ```console
    sudo service cron stop
    ```
3.  Stop public-facing services, like `nginx` (or the service the health check is looking for, for example):
    ```console
    sudo service nginx stop
    ```

#### Finish data migration and restart cron/public-facing services

1. If the service has pillar data for backups (see `pillar/prod/backup/$service.sls`), 
    run `rsync` once more to finalize data migration:
    ```console
    sudo -E -s rsync -av --rsync-path="sudo rsync" username@hostname:/pathname/ /pathname/
    ```
2.  Start cron jobs:
    ```console
    sudo service cron start
    ```
3.  Start public-facing services involved with healthcheck, like `nginx`:
    ```console
    sudo service nginx start
    ```
4.  Ensure that the `new-host` is live and serving traffic by viewing load balancer page:
    - View the `haproxy` status page in your browser [`http://localhost:4646/haproxy?stats`][loadbalancer]

5.  Check if users have any files on `old-host` and transfer accordingly:
    ```console
    for user in /home/psf-users/*; do sudo -E -s rsync --delete -av --progress --rsync-path="sudo rsync" user@old-host:$user/ $user/migrated-from-ubuntu-1804-lts-host/; done
    ```

### Shutdown and reclaim hostname

1.  On `old-host`, shut it down:
    ```console
    sudo shutdown -h now
    ```
2.  Destroy the `old-host` in DigitalOcean
3.  Change the `new-host` name in DigitalOcean by removing the suffix or similar that was used to differentiate 
    it from the old host (e.g., `new-hostname-2404` -> `old-hostname`)
4.  List out and delete the old host keys:
    ```console
    sudo salt-key -L
    sudo salt-key -d old-host
    ```
5.  On `new-host`, rename the hostname:
    ```console
    sudo hostname new-host
    ```
6.  Update `new-host` name in `/etc/hostname`,  `/etc/salt/minion_id`, and `/etc/hosts`:
    ```console
    sudo sed -i 's/old-host/new-host/g' /etc/hostname /etc/salt/minion_id /etc/hosts
    ```
7.  Restart the salt minion:
    ```console
    sudo service salt-minion restart
    ```
8.  Restart Datadog agent:
    ```console
    sudo service datadog-agent restart
    ```
9.  Accept the new host key on the `salt-master`:
    ```console
    sudo salt-key -a new-host
    ```
10. Run `highstate` on `salt-master` to update domain name as well as `known_hosts` file:
    ```console
    sudo salt-call state.highstate
    ```

[//]: # (Quicklink targets)
[loadbalancer]: http://localhost:4646/haproxy?stats