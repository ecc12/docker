FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install openssh-server
RUN useradd -mUs /bin/bash -p '$6$iKh435EZ$XF4mLsy9/hQKmeyE8pbSddiR7QfHT0Mo78fb0LYx6FaxCoJimKlUoCxWflrfgACG.dJxH0ZUdULp/5VOXdSFh.' user 
ADD sshd /etc/pam.d/sshd

VOLUME ["/home"]

EXPOSE 22
ADD start.sh /start.sh

CMD ["/start.sh"]

