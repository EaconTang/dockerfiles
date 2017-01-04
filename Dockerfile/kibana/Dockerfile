FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /usr/local/

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# install es5.1.1
COPY kibana-5.1.1-linux-x86_64.tar.gz /usr/local
RUN tar zxvf kibana-5.1.1-linux-x86_64.tar.gz \
    && mv kibana-5.1.1-linux-x86_64 kibana \
    && rm -f kibana-5.1.1-linux-x86_64.tar.gz

ENV KIBANA_HOME /usr/local/kibana

COPY config/kibana.yml /usr/local/kibana/config/kibana.yml

EXPOSE 5601

CMD ["sh", "/usr/local/kibana/bin/kibana"]


