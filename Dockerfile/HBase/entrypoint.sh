#!/bin/bash
start-hbase.sh
echo "HBase started."

sleep 1

hbase thrift start -p 60040 &
echo "HBase thrift server started."

hbase rest start -p 60050 &
echo "HBase REST server started."


HOSTNAME=`hostname`
LOGFILE="/opt/hbase/logs/hbase--master-${HOSTNAME}.out"

while [ ! -e $LOGFILE ]
do
  sleep 1
done
tail -f $LOGFILE
