FROM ecc12/ssh-server-sudo
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install perl sysstat nc libaio
RUN mkdir /tmp/zcs && cd /tmp/zcs && wget -O- http://files2.zimbra.com/downloads/8.0.7_GA/zcs-8.0.7_GA_6021.RHEL6_64.20140408123911.tgz | tar xz && chown -R user. /tmp/zcs
ADD config.defaults /tmp/zcs/config.defaults
ADD utilfunc.sh.patch /tmp/zcs/utilfunc.sh.patch
RUN cd /tmp/zcs/zcs-* && patch util/utilfunc.sh </tmp/zcs/utilfunc.sh.patch
RUN cd /tmp/zcs/zcs-* && ./install.sh -s --platform-override /tmp/zcs/config.defaults
RUN mv /opt/zimbra /opt/.zimbra

VOLUME ["/opt/zimbra"]

EXPOSE 22
EXPOSE 25
EXPOSE 456
EXPOSE 587
EXPOSE 110
EXPOSE 143
EXPOSE 993
EXPOSE 995
EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8443
EXPOSE 7071

ADD start.sh /start.sh

CMD ["/start.sh"]

