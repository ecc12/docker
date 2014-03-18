#!/bin/sh

cd /var/www
exec runuser -s /bin/sh -c 'node app.js' www

