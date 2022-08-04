Migrating to new host:
----------------------

### Prepare for migration:  

1.  Ensure that salt-master, loadbalancer, and host in question are up, and that their health check for the relevant service is failing in haproxy after the host is fully up

To view haproxy status: 

-vagrant up the salt-master, loadbalancer, and host in question (`vagrant up`)

-`vagrant ssh-config salt-master loadbalancer >> vagrant-ssh Ssh -L 4646:127:0.0.1:464 -F vagrant-ssh loadbalancer`

-open loacalhost:4646/haproxy?stats in browser

2.  Edit pillar data for roles.sls to include both old and new hostnames (ex. hostname*)

### Migrate the host:

#### Update Salt Master with latest config including prep from above

1.  ssh into the salt-master server `ssh salt-master`

2.  Navigate to srv/psf-salt `cd srv/psf-salt`

3.  Run `git pull`

4.  Run `sudo salt-call state.highstate`

#### Ensure new configuration doesn't impact host being migrated

1.  ssh into the host in question `ssh hostname`

2.  Navigate to srv/psf-salt `cd srv/psf-salt`

3.  Run `git pull`

4.  Run `sudo salt-call state.highstate`

#### Create new host:

1.  Start a new droplet  in digital ocean, and check resources being used on old host to see if we are over or under spending on resources 

2.  Create a new droplet with new version of ubuntu, appropriate resources,  and name it according to hostname + 2004

#### Provision new host for migration:

1.  Add Salt repositories for our current target version (add the apt-repo and install salt-minion package)

-  `RUN wget --quiet -O /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004/salt-archive-keyring.gpg`

-  `RUN echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=$(dpkg --print-architecture)] https://repo.saltproject.io/py3/ubuntu/20.04/$(dpkg --print-architecture)/3004 focal main" > /etc/apt/sources.list.d/salt.list`

2.  Configure the salt-minion. On new host, run the command

- `RUN apt-get update -y && apt-get install -y --no-install-recommends salt-minion`

- On the original host, look through `etc/salt/minion.d*` to set up salt-minion configuration files to match on new host 

3.  Run `sudo salt-call state.highstate`

#### Stop services on old host:

1.  ssh into old host ( `ssh old-hostname` )

2.  stop cron jobs, `sudo service cron stop`

3.  stop public-facing services, like nginx, or the service the health check is looking for ex)  `sudo service nginx stop`

#### Begin data migration:

1.  `ssh -A new-hostname` into new host to enable forwarding of ssh-agent

2.  stop cron jobs, `sudo service cron stop`

3.  stop public-facing services, like nginx, or the service the health check is looking for ex)  `sudo service nginx stop`

4.  ensure that the volume is mounted in the correct location 

5.  run rsync once to move bulk of data and as necessary to watch for changes, and one final time before making the swap `sudo -E -s rsync -avz --rsync-path="sudo rsync" username@hostname: /pathname/ /pathname/` 

1.  The `/pathname/` can be determined by looking at the pillar data for backups, `pillar/prod/backup` using the source_directory path for the given host (example: the downloads host uses `/srv/`)

1.  start cron jobs, `sudo service cron start`

2.  start public-facing services involved with healthcheck, like nginx, `sudo service nginx start`

3.  check if users have any files on old host and transfer accordingly

#### Shutdown and reclaim hostname:

1.  On old host, destroy old host by running, `sudo -h shutdown now`

2.  Change the hostname in Digital Ocean 

3.  On new host, run `sudo hostname new-hostname` to rename

4.  Update hostname in `etc/hostname`,  `etc/salt/minion_id`, and `etc/hosts`

5.  Run `sudo salt-key -L` to list out and remove old keys 

6.  Run `sudo salt-key -a` to accept new keys

7.  Restart datadog, `sudo service datadog restart` 

8.  Run highstate (`sudo salt-call state.highstate`) on salt-master to update domain name as well as known_hosts file
