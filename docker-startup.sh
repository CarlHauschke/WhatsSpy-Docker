#!/bin/sh
LOCKFILE="/var/lock/tracker.lock"

if ( set -o noclobber; echo "locked" > "$LOCKFILE") 2> /dev/null; then
  	# Start tracker session
	# Started under the user www-data
	# Called from the api/ dir.
	php /var/www/whatsspy/api/tracker.php | tee /var/www/whatsspy/api/tracker.log
	echo "Started tracker session."
else
  echo "Lock failed - exit"
  exit 1
fi

