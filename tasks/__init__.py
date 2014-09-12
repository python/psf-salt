from __future__ import absolute_import, division, print_function

import invoke

from . import salt

ns = invoke.Collection(salt)
