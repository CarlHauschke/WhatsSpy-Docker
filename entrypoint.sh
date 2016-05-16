#!/bin/bash
service php5-fpm start
cd /var/www/whatsspy
if ![ -s api/config.php ] then
	cp api/config.example.php api/config.php
/var/www/whatsspy/api/tools/controls/docker-startup.sh