#!/bin/bash
#
# Script to clean up the outdated MoinMoin sessions.
#
# This script has to be run using a cronjob at least once a day
# to prevent the number of used inodes from blowing up.
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
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/moin maint cleansessions
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/jython maint cleansessions
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/psf maint cleansessions
