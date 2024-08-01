from mercurial.hgweb.hgwebdir_mod import hgwebdir
from mercurial import encoding

CONFIG = '/srv/hg/repos.conf'
encoding.encoding = 'utf-8'
{% if grains["oscodename"] == "noble" %}
application = hgwebdir(CONFIG.encode())
{% else %}
application = hgwebdir(CONFIG)
{% endif %}

