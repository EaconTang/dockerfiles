
## 构建镜像
> docker build -t eacon/spark:2.2 .

## 运行
> docker run -d --name spark -p 4040:4040 -p 6066:6066 -p 7077:7077 -p 8080:8080 -h localhost -v /Users/eacon/data/spark:/data eacon/spark:2.2
