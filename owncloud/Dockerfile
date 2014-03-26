FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN cd /etc/yum.repos.d/ && wget http://download.opensuse.org/repositories/isv:ownCloud:community/CentOS_CentOS-6/isv:ownCloud:community.repo
RUN yum -y install owncloud mod_ssl samba-client

RUN echo DocumentRoot /var/www/html/owncloud >>/etc/httpd/conf/httpd.conf

VOLUME ["/var/www/html/owncloud/config", "/var/www/html/owncloud/data"]

EXPOSE 80
EXPOSE 443
ADD start.sh /start.sh

CMD ["/start.sh"]

