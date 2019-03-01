from mercurial.hgweb.hgwebdir_mod import hgwebdir
from mercurial import encoding

CONFIG = '/srv/hg/repos.conf'
encoding.encoding = 'utf-8'
application = hgwebdir(CONFIG)
