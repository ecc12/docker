#!/bin/sh

cd /var/www
[ -x bootstrap.sh ] && ./bootstrap.sh
exec runuser -s /bin/sh -c 'node app.js' www

