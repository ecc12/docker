FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN cd /etc/yum.repos.d && wget http://www.hop5.in/yum/el6/hop5.repo
RUN yum -y install hhvm
RUN useradd -mUrs /bin/false -d /var/www www

VOLUME ["/var/www"]

EXPOSE 80
ADD start.sh /start.sh

CMD ["/start.sh"]

