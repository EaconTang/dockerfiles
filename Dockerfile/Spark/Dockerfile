FROM centos:6.6
MAINTAINER <eacon-tang@foxmail.com>


WORKDIR /opt


# install JDK8
RUN yum install -y java-1.8.0-openjdk; yum clean all

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64
ENV PATH $PATH:$JAVA_HOME/bin
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH

# install spark
RUN yum install -y tar;yum clean all
RUN curl -O https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
RUN tar zxvf spark-2.2.0-bin-hadoop2.7.tgz \
  && mv spark-2.2.0-bin-hadoop2.7/ spark/ \
  && rm -f spark-2.2.0-bin-hadoop2.7.tgz

# add env
ENV SPARK_HOME /opt/spark
ENV PATH $SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

# fix issue:
#   Caused by: java.lang.RuntimeException: The root scratch dir: /tmp/hive on HDFS should be writable.
RUN chmod -R 777 /tmp

# run pyspark
ADD entrypoint.py /opt/entrypoint.py
RUN chmod +x /opt/entrypoint.py
EXPOSE 8080 7077 6066
ENTRYPOINT ["/opt/entrypoint.py"]
CMD ["start-master"]
