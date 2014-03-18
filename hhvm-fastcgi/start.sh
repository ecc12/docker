#!/bin/sh

cd /var/www
exec hhvm -u www -m server -vServer.Type=fastcgi -vServer.Port=9000

