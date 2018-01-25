#!/bin/bash

/etc/init.d/php7.1-fpm start
tail -f /var/log/php7.1-fpm.log
