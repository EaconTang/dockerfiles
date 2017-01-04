FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /usr/local/

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY bosun-linux-amd64 bin/bosun
RUN chmod +x bin/bosun
COPY bosun.conf /var/conf/bosun.conf

COPY run.sh /run.sh

EXPOSE 8070

CMD ["sh", "/run.sh"]