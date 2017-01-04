FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /usr/local/

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY grfana-3.0-linux-x64.tar.gz grafana.tar.gz
RUN tar zxvf grafana.tar.gz \
    && mv grafana-3.0.0-beta71462173753/ grafana/ \
    && rm -f grafana.tar.gz

COPY run.sh /run.sh

WORKDIR /usr/local/grafana/

CMD ["sh", "/run.sh"]