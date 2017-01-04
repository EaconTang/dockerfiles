FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /usr/local/

# install jdk
COPY jdk-7u79-linux-x64.gz /usr/local/
RUN tar zxvf jdk-7u79-linux-x64.gz \
    && mv jdk1.7.0_79/ java/ \
    && rm -f jdk-7u79-linux-x64.gz

# jdk env
ENV JAVA_HOME /usr/local/java
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# install flume
COPY apache-flume-1.7.0-bin.tar.gz /usr/local
RUN tar zxvf apache-flume-1.7.0-bin.tar.gz \
    && mv apache-flume-1.7.0-bin flume/ \
    && rm -f apache-flume-1.7.0-bin.tar.gz

# flume env
ENV FLUME_HOME /usr/local/flume
ENV FLUME_CONF $FLUME_HOME/conf
ENV FLUME_CLASSPATH $FLUME_HOME/lib
ENV PATH $FLUME_HOME/bin:$PATH

# dependency jars when flume sinks to es
COPY es_jar/elasticsearch-5.1.1.jar /usr/local/flume/lib/elasticsearch-5.1.1.jar
COPY es_jar/lucene-core-6.3.0.jar /usr/local/flume/lib/lucene-core-6.3.0.jar

COPY conf/tail_file_to_es.conf /usr/local/flume/conf/flume-default.conf
COPY run.sh /run.sh

# default source port
EXPOSE 4444

CMD ["sh", "/run.sh"]