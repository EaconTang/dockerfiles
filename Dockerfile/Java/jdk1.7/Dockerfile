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