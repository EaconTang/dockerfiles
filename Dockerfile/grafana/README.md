# Grafana

## 自建镜像
    docker build -t <image:tag> <Dockerfile_path>
    
## 启动
    docker run -d --name grafana -p 3000:3000 --link tsd:tsd <image:tag>
    
### Web界面
- 用户名密码：admin/admin