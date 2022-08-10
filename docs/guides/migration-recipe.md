Migrating to new host
=====================

## Prepare salt configuration for migration

1.  Ensure that salt-master, loadbalancer, and host in question can be brought up with vagrant locally, and that their health check for the relevant service is failing in haproxy after the host is fully up

- `laptop:psf-salt user$ vagrant up salt-master`
- `laptop:psf-salt user$ vagrant up loadbalancer`
- `laptop:psf-salt user$ vagrant up host`

To view haproxy status: 

- vagrant up the salt-master, loadbalancer, and host in question (`vagrant up`)
- Prepare an ssh configuration file to access the host with native ssh commands: `vagrant ssh-config salt-master loadbalancer >> vagrant-ssh` 
- Open an ssh session with port forwarding to the haproxy status page: `ssh -L 4646:127.0.0.1:4646 -F vagrant-ssh loadbalancer`
- view the haproxy status page in your browser `http://localhost:4646/haproxy?stats`

2.  Edit pillar data for roles.sls to include both old and new hostnames (ex. hostname*)
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

### Update Salt Master with latest config including prep from above

1.  ssh into the salt-master server `ssh salt.nyc1.psf.io`

2.  Navigate to srv/psf-salt `user@salt:~$ cd /srv/psf-salt`

3.  Run `user@salt:/srv/psf-salt$ sudo git pull`

4.  Run highstate to update the roles settings to reflect the new matchng pattern, as well as additional changes to support migration: `user@salt:/srv/psf-salt$ sudo salt-call state.highstate`

### Ensure new configuration doesn't impact host being migrated

1.  ssh into the old-host `laptop:psf-salt user$ ssh old-host`

2.  Run `user@old-host:~$ sudo salt-call state.highstate`

### Create new host
1.  Start a new droplet  in digital ocean, and check resources being used on old host to see if we are over or under spending on resources 

2.  Create a new droplet with new version of ubuntu, appropriate resources,  and name it according to hostname + 2004

### Provision new host for migration

1. ssh into new-host via the IP address provided by DigitalOcean`ssh root@NNN.NNN.NNN.NNN`

2.  Add Salt repositories for our current target version (add the apt-repo and install salt-minion package)

-   `user@new-host:~$ wget --quiet -O /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004/salt-archive-keyring.gpg`
-  `user@new-host:~$ echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=$(dpkg --print-architecture)] https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004 focal main" > /etc/apt/sources.list.d/salt.list`

3.  Install and configure the salt-minion. On new-host, run the command

- `user@new-host:~$ apt-get update -y && apt-get install -y --no-install-recommends salt-minion`
- On the old-host, look through `/etc/salt/minion.d*` to set up salt-minion configuration files to match on new-host:
  - run `user@old-host:~$ for file in /etc/salt/minion.d/*; do echo -e "cat > $file <<EOF"; sudo cat $file; echo "EOF"; done` to generate bash that will create these files 

4. Restart the salt-minion service on the new host to pickup the configuration and register with salt-master: `user@new-host:~$ sudo salt-call service.restart`

5. On salt-master, accept the key for the new-host: `user@new-host:~$ sudo salt-key -a new-host`

6. On the new-host, run highstate `sudo salt-call sate.highstate` 

7. Log out of root session

8. Ensure that the new host is not passing health checks in the loadbalancer: `ssh -L 4646:127.0.0.1:4646 lb-a.nyc1.psf.io` then open http://localhost:4646/haproxy?stats in your browser.

9.  Run hightstate on the salt-master to create a public dns record for the new-host `user@salt:/srv/psf-salt$ sudo salt-call state.highstate`

### Begin data migration

1.  `laptop:psf-salt user$ ssh -A new-host` into new host to enable forwarding of ssh-agent

2.  Stop cron jobs `user@new-host:~$ sudo service cron stop`

3.  Stop public-facing services, like nginx, or the service the health check is looking for. Use this command as an example:  `user@new-host:~$ sudo service nginx stop`

4.  Ensure that any additional volumes are mounted and in the correct location:
- Check what disks are currently mounted and where: `df`
- Determine where any additional disks should be mounted (based on salt configuration of services, for example `docs` and `downloads` roles need a big `/srv` for their data storage
- Ensure mounting of any external disks are in the right location using `mount` command with appropriate arguments
- Ensure that the volumes will be remounted on startup by configuring them in `/etc/fstab` 

5.  Run rsync once to move bulk of data and as necessary to watch for changes `user@new-host:~$ sudo -E -s rsync -av --rsync-path="sudo rsync" username@old-host:/pathname/ /pathname/` 

- The `/pathname/` can be determined by looking at the pillar data for backups, `pillar/prod/backup` using the source_directory path for the given host (example: the downloads host uses `/srv/`)

### Stop services on old host

1.  ssh into old-host ( `laptop:psf-salt user$ ssh old-host` )

2.  Stop cron jobs `user@old-host:~$ sudo service cron stop`

3.  Stop public-facing services, like nginx, or the service the health check is looking for ex)  `user@old-host:~$ sudo service nginx stop`

### Finish data migration and restart cron/public-facing services

1. Run rsync once more to finalize data migration `user@new-host:~$ sudo -E -s rsync -av --rsync-path="sudo rsync" username@hostname: /pathname/ /pathname/` 

2.  Start cron jobs `user@new-host:~$ sudo service cron start`

3.  Start public-facing services involved with healthcheck, like nginx, `user@new-host:~$ sudo service nginx start`

4.  Ensure that the new-host is live and serving traffic by viewing loadbalancer page:
- view the haproxy status page in your browser `http://localhost:4646/haproxy?stats`

5.  Check if users have any files on old-host and transfer accordingly:
- `user@new-host:~$ for user in /home/psf-users/*; do sudo -E -s rsync --delete -av --progress --rsync-path="sudo rsync" user@old-host:$user/ $user/migrated-from-ubuntu-1804-lts-host/; done`

### Shutdown and reclaim hostname

1.  On old-host, stop the old-host by running, `user@old-host:~$ sudo shutdown -h now`

2.  Destroy the old-host in DigitalOcean

3.  Change the new-host name in DigitalOcean by removing the suffix or similar that was used to differentiate it from the old-host.

4.  Run `user@salt:~$ sudo salt-key -L` to list out and `user@salt:~$ sudo salt-key -d old-host` to remove old keys

5.  On new-host, run `user@new-host:~$ sudo hostname new-host` to rename

6.  Update new-host name in `/etc/hostname`,  `/etc/salt/minion_id`, and `/etc/hosts`

7.  Restart the salt minion `user@new-host:~$ sudo salt-call service.restart`

8.  Restart datadog `user@new-host:~$ sudo service datadog-agent restart` 

9.  Run `user@salt:~$ sudo salt-key -a new-host` to accept new keys

10.  Run highstate `user@salt:~$ sudo salt-call state.highstate` on salt-master to update domain name as well as known_hosts file
