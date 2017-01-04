touch /var/log/bosun.log
/usr/local/bin/bosun -c /var/conf/bosun.conf 1>>/var/log/bosun.log 2>&1 &
tail -f /var/log/bosun.log