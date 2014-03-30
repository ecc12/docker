#!/bin/sh

[ -f /conf/redis.conf ] && cp /conf/redis.conf /etc/ || ( cp /etc/redis.conf /conf/ )

exec service redis start

