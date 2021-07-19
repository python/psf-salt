#!/bin/bash
#
# Script to rebuild the MoinMoin Xapian indexes.
#
# WARNING: This script may only be run as moin user.
#

# Make sure only moin can run our script
if [ "$(id -nu)" != "moin" ]; then
   echo "This script must be run as moin user" 1>&2
   exit 1
fi

# Rebuild indexes
cd /srv/moin/
. venv/bin/activate

moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/moin index build --mode=rebuild
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/jython index build --mode=rebuild
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/psf index build --mode=rebuild
