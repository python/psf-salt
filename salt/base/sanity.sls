niceties:
  pkg.installed:
    - pkgs:
      - htop
      - traceroute

time-sync:
  pkg.installed:
    - pkgs:
      - ntp
      - ntpdate

ntp:
  service:
    - running
    - enable: True


# Cron has a default $PATH of only /usr/bin:/bin, however the root user's
# default $PATH in the shell includes various sbin directories. This can cause
# scripts to succeed in the shell but fail when run from cron. This bit of
# sanity will ensure consistent default $PATH for the root user.
root-cron-path:
  cron.env_present:
    - name: PATH
    - user: root
    - value: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"


# Get rid of the Rackspace Mirrors and use the real mirrors, the Rackspace
# mirrors are often way behind.
/etc/apt/sources.list:
  file.managed:
    - source: salt://base/config/sources.list.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - order: 2

  module.wait:
    - name: pkg.refresh_db
    - order: 2
    - watch:
      - file: /etc/apt/sources.list
