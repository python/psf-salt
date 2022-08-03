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
    - mode: "0600"
    - replace: False


# su must only be accessible to user and group root
/bin/su:
  file.managed:
    - user: root
    - group: root
    - mode: "0750"
    - replace: False
