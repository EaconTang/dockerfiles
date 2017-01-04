FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /opt

# install erlang
COPY erlang-19.2.0-1.el6.x86_64.rpm /opt/
RUN rpm -ivh /opt/erlang-19.2.0-1.el6.x86_64.rpm

# install RabbitMQ
RUN yum install -y wget
RUN wget –no-cache http://www.convirture.com/repos/definitions/rhel/6.x/convirt.repo -O /etc/yum.repos.d/convirt.repo
RUN yum install -y socat
RUN rpm --import https://www.rabbitmq.com/rabbitmq-release-signing-key.asc
RUN wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.6/rabbitmq-server-3.6.6-1.el6.noarch.rpm
RUN yum install -y rabbitmq-server-3.6.6-1.el6.noarch.rpm
	

# enable web admin
RUN rabbitmq-plugins enable rabbitmq-management \
	&& rabbitmqctl add_user admin admin \
	&& rabbitmqctl set_user_tags admin administrator \
	&& rabbitmqctl set_permissions -p “/” admin “.” “.” “.*” \
	&& service iptables stop	

EXPOSE 5672 15672

# start
CMD ["rabbitmq-server", "start"]