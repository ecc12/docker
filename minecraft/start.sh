#!/bin/sh

cd /minecraft
[ -x bootstrap.sh ] && ./bootstrap.sh
[ -x start.sh ] && exec runuser -s /bin/sh -c ./start.sh minecraft
exec runuser -s /bin/sh -c '/usr/bin/java minecraft.jar' minecraft

