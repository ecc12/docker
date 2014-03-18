#!/bin/sh

cd /var/www
exec hhvm -u www -m server 

