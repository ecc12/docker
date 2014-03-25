#!/bin/sh

[ -d /data/conf ] && cp -r /data/conf/* /etc/nginx/ || ( mkdir -p /data/conf && cp -r /etc/nginx/* /data/conf/ )

exec service nginx start

