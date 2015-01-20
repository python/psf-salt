/etc/security/limits.d/10.hardcore.conf:
  file.managed:
    - source: salt://base/harden/config/limits.conf
    - user: root
    - group: root
    - mode: 440


/etc/login.defs:
  file.managed:
    - source: salt://base/harden/config/login.defs.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 444


# Remove write permissions from path folders ($PATH) for all regular users
# this prevents changing any system-wide command from normal users
{% for folder in ["/usr/local/sbin", "/usr/local/bin", "/usr/sbin", "/usr/bin", "/sbin", "/bin"] %}
"remove write permission from {{ folder }}":
  cmd.run:
    - name: chmod go-w -R {{ folder }}
    - unless: find {{ folder }}  -perm -go+w -type f | wc -l | egrep '^0$'
{% endfor %}


# Shadow must only be accessible to user root
/etc/shadow:
  file.managed:
    - user: root
    - group: root
    - mode: 600


# su must only be accessible to user and group root
/bin/su:
  file.managed:
    - user: root
    - group: root
    - mode: 750
