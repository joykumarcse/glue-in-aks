#!/bin/bash
/usr/sbin/service php8.1-fpm start
/usr/sbin/service nginx start
/usr/sbin/service mysql start
tail -f /dev/null
