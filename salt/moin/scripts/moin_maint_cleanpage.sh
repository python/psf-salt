#!/bin/bash
#
# Script to clean up unused and deleted wiki pages.
#
# This script has to be run using a cronjob once a day to
# prevent the number of unused pages from blowing up.
#
# WARNING: This script may only be run as moin user.
#

# Make sure only moin can run our script
if [ "$(id -nu)" != "moin" ]; then
   echo "This script must be run as moin user" 1>&2
   exit 1
fi

# Globals
DATE=`date +'%Y-%m-%d-%H%M%S'`

# Clean sessions
cd /srv/moin/
. venv/bin/activate

# Clean up Python wiki
cd /data/moin/instances/python/data
echo "Clean up Python wiki..."
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/moin maint cleanpage > cleanpage.sh
# create maintenance dirs
mkdir trash deleted
# move the pages to trash/ and deleted/
bash ./cleanpage.sh
# archive cleanup
tar cfz ../maintenance/$DATE.tgz cleanpage.sh deleted/ trash/
rm -rf cleanpage.sh deleted trash

# Clean up PSF wiki
cd /data/moin/instances/psf/data
echo "Clean up PSF wiki..."
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/psf maint cleanpage > cleanpage.sh
# create maintenance dirs
mkdir trash deleted
# move the pages to trash/ and deleted/
bash ./cleanpage.sh
# archive cleanup
tar cfz ../maintenance/$DATE.tgz cleanpage.sh deleted/ trash/
rm -rf cleanpage.sh deleted trash

# Clean up Jython wiki
cd /data/moin/instances/jython/data
echo "Clean up Jython wiki..."
moin --config-dir=/etc/moin --wiki-url=http://wiki.python.org/jython maint cleanpage > cleanpage.sh
# create maintenance dirs
mkdir trash deleted
# move the pages to trash/ and deleted/
bash ./cleanpage.sh
# archive cleanup
tar cfz ../maintenance/$DATE.tgz cleanpage.sh deleted/ trash/
rm -rf cleanpage.sh deleted trash
