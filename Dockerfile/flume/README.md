# Flume

## 启动
    docker run --name flume -v test.log:/var/log/default.log --link horuseye01_es_1:es horuseye/flume:1.7