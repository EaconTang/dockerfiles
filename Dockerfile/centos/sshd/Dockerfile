FROM centos:6
MAINTAINER <tangyingkang@useease.com>

RUN yum install -y openssh-server openssh \
    && yum clean all

EXPOSE 22

CMD ["sh", "/etc/init.d/sshd", "start"]