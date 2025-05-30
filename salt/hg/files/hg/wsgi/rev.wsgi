import os
import sys

home = os.path.expanduser('~hg')

sys.path.insert(0, os.path.join(home, 'src'))

from hgrev import hgrev

application = hgrev()
