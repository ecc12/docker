FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN cd /etc/yum.repos.d && wget http://www.hop5.in/yum/el6/hop5.repo
ADD config /etc/selinux/config
RUN yum -y install docker-io
RUN echo "none /sys/fs/cgroup cgroup defaults 0 0" >> /etc/fstab

# From https://github.com/jpetazzo/dind/blob/master/wrapdocker
ADD ./wrapdocker /usr/local/bin/wrapdocker

VOLUME /var/lib/docker

EXPOSE 4243
ADD start.sh /start.sh

CMD ["/start.sh"]

