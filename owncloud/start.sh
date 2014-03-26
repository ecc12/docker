#!/bin/sh

OWN=/var/www/html/owncloud
[ "$(ls -A $OWN/data)" ] || ( \
  mkdir $OWN/data/cfg && \
  cp $OWN/config/config.sample.php $OWN/data/cfg && \
  chown -R apache. $OWN/data )

[ -e $OWN/data/cfg/config.php ] && cp $OWN/data/cfg/config.php $OWN/config/ && chown apache. $OWN/config/config.php
[ -e $OWN/data/cfg/owncloud.crt ] && cp $OWN/data/cfg/owncloud.crt /etc/pki/tls/certs/localhost.crt
[ -e $OWN/data/cfg/owncloud.key ] && cp $OWN/data/cfg/owncloud.key /etc/pki/tls/private/localhost.key

exec /usr/sbin/apachectl -D FOREGROUND

