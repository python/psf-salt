#!/bin/bash
#
# Script to clean out all MoinMoin sessions (including ones which
# are marked to not expire).
#
# This script should be run every week or month to prevent the
# number of used inodes from blowing up.
#
# WARNING: This script may only be run as moin user.
#

# Make sure only moin can run our script
if [ "$(id -nu)" != "moin" ]; then
   echo "This script must be run as moin user" 1>&2
   exit 1
fi

# Clean sessions
cd /srv/moin/
. venv/bin/activate
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/moin maint cleansessions --all
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/jython maint cleansessions --all
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/psf maint cleansessions --all
