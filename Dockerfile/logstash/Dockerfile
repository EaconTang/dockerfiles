FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /usr/local/

# install jdk1.8
COPY jdk-8u91-linux-x64.rpm /usr/local/
RUN rpm -ivh jdk-8u91-linux-x64.rpm \
    && mv /usr/java/jdk1.8.0_91 java/ \
    && rm -f jdk-8u91-linux-x64.rpm

# jdk env
ENV JAVA_HOME /usr/local/java
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# install logstash5.1.1
COPY logstash-5.1.1.tar.gz /usr/local
RUN tar zxvf logstash-5.1.1.tar.gz \
    && mv logstash-5.1.1 logstash \
    && rm -f logstash-5.1.1.tar.gz

ENV LOGSTASH_HOME /usr/local/logstash

COPY config/logstash.yml /usr/local/logstash/config/logstash.yml

CMD ["sh", "/usr/local/logstash/bin/logstash"]


