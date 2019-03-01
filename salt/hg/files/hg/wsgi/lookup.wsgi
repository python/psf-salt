import os
import sys

home = os.path.expanduser('~hg')

sys.path.insert(0, os.path.join(home, 'src'))

from hglookup import hglookup

CONFIG = os.path.join(home, 'src', 'hg_commits.json')
import json
data = json.load(open(CONFIG))
application = hglookup(data)
