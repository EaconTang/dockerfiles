FROM centos:6.6
MAINTAINER <eacon-tang@foxmail.com>


WORKDIR /opt


# install JDK8
RUN yum install -y java-1.8.0-openjdk; yum clean all

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64
ENV PATH $PATH:$JAVA_HOME/bin
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH


# install HBase
RUN cd /opt && curl -O https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/stable/hbase-1.2.6-bin.tar.gz
RUN yum install -y tar; yum clean all
RUN tar zxf hbase-1.2.6-bin.tar.gz \
    && mv hbase-1.2.6/ hbase/ \
    && rm -f hbase-1.2.6-bin.tar.gz

ENV HBASE_HOME /opt/hbase
ENV PATH $PATH:$HBASE_HOME/bin

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

EXPOSE 60000 60010 60030 2181 60040 60050

ENTRYPOINT ["/opt/entrypoint.sh"]
