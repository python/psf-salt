# PyCon Website!

## Instances

### Staging

Deploys from https://github.com/PyCon/pycon/tree/staging

Current backends:
  - pycon-staging.iad1.psf.io

Staging instance is available for HTTP access at:
  - https://pycon-staging.global.ssl.fastly.net (Fronted by Fastly global CDN)
  - https://pycon-staging.python.org
    - Hits backend directly, bypasses global CDN

### Production

Deploys from https://github.com/PyCon/pycon/tree/production

Current backends:
  - pycon-prod.iad1.psf.io

Production instance is available for HTTP access at:
  - https://us.pycon.org (Fronted by Fastly global CDN)


## FAQ

### Access

For SSH access to the backend servers, a pull request to the psf-salt repository can be submitted modifying the file [pillar/base/users.sls](https://github.com/python/psf-salt/blob/master/pillar/base/users.sls).

Format for your pull request to add a dictionary entry to the users key like:

```
  <username>:
    fullname: "Full Name"
    ssh_keys:
      - ssh-rsa AAAAB3...deadbeef comment
    access:
      pycon:
        allowed: True
        sudo: True
```

### Helpful tips on the servers

- OS is Ubuntu 14.04 with nightly unattended upgrades of system packages
- The application user is `pycon` on all nodes.
- Virtualenv with requirements is maintained at `/srv/pycon/env`
- Code is deployed to `/srv/pycon/pycon`, changes are pulled once every 15 minutes.
- Running a `manage.py` command:
  - `sudo -u pycon /srv/pycon/env/bin/python /srv/pycon/pycon/manage.py`
- Uploaded media is stored at `/srv/pycon/media`
  - Backups of `media` are run nightly with increments maintained for 14 days.
- Configuration of the `pycon` Django application is managed by salt at `/srv/pycon/pycon/pycon/settings/local.py`
- Postgres databases for dev and prod are snapshotted hourly and increments maintained for 14 days.
