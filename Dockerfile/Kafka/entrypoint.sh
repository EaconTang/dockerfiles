#!/bin/bash

cd /opt/kafka

# start zk
bin/zookeeper-server-start.sh config/zookeeper.properties &

sleep 3

# start kafka server
bin/kafka-server-start.sh config/server.properties &

sleep 3

# create topic 'test'
bin/kafka-topics.sh --create --zookeeper 127.0.0.1:2181 --replication-factor 1 --partitions 1 --topic test

sleep 3

tail -f logs/server.log
