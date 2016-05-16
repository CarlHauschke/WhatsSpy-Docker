#!/bin/sh
service nginx start
service php5-fpm start

cd /var/www/whatsspy

if ! [ -s api/config.php ]; then
	cp api/config.example.php api/config.php
fi

sudo -u www-data php /var/www/whatsspy/api/tracker.php | tee /var/www/whatsspy/api/tracker.log