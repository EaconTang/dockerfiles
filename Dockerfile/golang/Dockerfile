FROM centos:6
MAINTAINER <tangyingkang@useease.com>


WORKDIR /opt

# install go
COPY go1.7.1.linux-amd64.tar.gz /opt
RUN tar -C /usr/local -xzf /opt/go1.7.1.linux-amd64.tar.gz \
    && rm -f /opt/go1.7.1.linux-amd64.tar.gz

RUN mkdir /opt/work && mkdir /opt/work/src && mkdir /opt/work/bin && mkdir /opt/work/pkg

# go env
ENV GOROOT /usr/local/go
ENV GOPATH /opt/work
ENV PATH $PATH:$GOROOT/bin
