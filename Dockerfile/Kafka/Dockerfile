FROM centos:6.6
MAINTAINER <eacon-tang@foxmail.com>


WORKDIR /opt


# install JDK8
RUN yum install -y java-1.8.0-openjdk; yum clean all

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64
ENV PATH $PATH:$JAVA_HOME/bin
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH

# install kafka
RUN yum install -y tar; yum clean all
RUN curl -O http://mirrors.hust.edu.cn/apache/kafka/1.0.0/kafka_2.11-1.0.0.tgz
RUN tar zxvf kafka_2.11-1.0.0.tgz \
  && rm -f kafka_2.11-1.0.0.tgz \
  && mv kafka_2.11-1.0.0/ kafka/

# add env
ENV KAFKA_HOME /opt/kafka
ENV PATH $KAFKA_HOME/bin:$PATH

# run kafka
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

EXPOSE 2181 9092

ENTRYPOINT ["/opt/entrypoint.sh"]
