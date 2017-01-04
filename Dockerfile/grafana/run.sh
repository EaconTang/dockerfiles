touch /var/log/grafana.log
/usr/local/grafana/bin/grafana-server start 1>>/var/log/grafana.log 2>&1 &
tail -f /var/log/grafana.log