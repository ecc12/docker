#!/bin/sh

/etc/init.d/sshd start
/etc/init.d/sshd stop
exec /usr/sbin/sshd -D -e 

