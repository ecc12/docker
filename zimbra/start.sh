#!/bin/sh

ls /opt/zimbra/installed-by-docker || (
mkdir -p /opt/zimbra
chown zimbra. /opt/zimbra
mv /opt/.zimbra/{*,.*} /opt/zimbra/
sed -i "s/XHOSTNAMEX/`hostname -f`/" /tmp/zcs/config.defaults
sed -i "s/XPASSWORDX/`date | sha1sum | cut -c-8`/" /tmp/zcs/config.defaults
sed -i "s/XPASSWORD2X/`date | sha1sum | cut -c-8`/" /tmp/zcs/config.defaults
sed -i "s/XRANDOMX/`date | sha1sum | cut -c-8`/" /tmp/zcs/config.defaults
sed -i "s/XRANDOM2X/`date | sha1sum | cut -c-8`/" /tmp/zcs/config.defaults
sed -i "s/XRANDOM3X/`date | sha1sum | cut -c-8`/" /tmp/zcs/config.defaults
cp /tmp/zcs/config.defaults /opt/zimbra/config.install
mv /opt/zimbra/.install_history{,.orig}
/opt/zimbra/libexec/zmsetup.pl -d -c /opt/zimbra/config.install
touch /opt/zimbra/installed-by-docker
)

/etc/init.d/sshd start
/etc/init.d/sshd stop
su -c "/opt/zimbra/bin/zmcontrol start" zimbra
exec /usr/sbin/sshd -D -e 

