# Docker

## 一.Docker 下载

windows:[docker](https://docs.docker.com/desktop/install/)

ubuntu:

```sh
 curl -fsSL https://test.docker.com -o test-docker.sh
 sudo sh test-docker.sh
```

[dockerhub](https://hub.docker.com/)

Docker 允许你在容器内运行应用程序， 使用 docker run 命令来在容器内运行一个应用程序。

输出 Hello world

## 二. 常用命令

启动一个容器:

```sh
docker run -d -p 80:80 --name webserver nginx
```

列出正在运行的容器：

```sh
docker ps
```

停止一个容器：

```sh
docker stop <CONTAINER_ID>
```

启动一个停止的容器：

```sh
docker start <CONTAINER_ID>
```

删除一个容器：

```sh
docker rm <CONTAINER_ID>
```

列出所有镜像：

```sh
docker images
```

从 Docker Hub 拉取镜像：

```sh
docker pull <IMAGE_NAME>
```

删除一个镜像：

```sh
docker rmi <IMAGE_ID>
```

查看容器日志：

```sh
docker logs <CONTAINER_ID>
```

### 获取镜像

1. 从 Docker 镜像仓库获取镜像

```sh
    docker pull [选项] [Docker Registry 地址[:端口号]/]仓库名[:标签]
```

2. 使用 Docker 镜像

```sh
docker run httpd
```
