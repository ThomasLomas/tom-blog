#!/bin/bash

HOSTNAME=`hostname`

echo "ServerName $HOSTNAME" >> /etc/apache2/apache2.conf

tail -F /var/log/apache2/* &
exec apache2ctl -D FOREGROUND

