#!/bin/sh

[ -f /conf/mongodb.conf ] || cp /etc/mongodb.conf /conf/

exec mongod -f /conf/mongodb.conf

