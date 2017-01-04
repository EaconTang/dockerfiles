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

# install es5.1.1
COPY elasticsearch-5.1.1 /usr/local/elasticsearch
ENV ES_HOME /usr/local/elasticsearch
# es could not be run as root, create user: elasticsearch, chown of /usr/local/elasticsearch
RUN groupadd es \
    && useradd elasticsearch -g es -p elasticsearch \
    && chown -R elasticsearch:es /usr/local/elasticsearch

COPY config/elasticsearch.yml /usr/local/elasticsearch/config/elasticsearch.yml

USER elasticsearch

EXPOSE 9200 9300

CMD ["sh", "/usr/local/elasticsearch/bin/elasticsearch"]


