# Docker

### 安装docker

**删除旧版本docker**

```sh
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

**1. 使用apt存储库安装docker**

设置 Docker 的apt存储库

```sh
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

**2. 安装docker**

```sh
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

**3. 验证是否安装成功**

```sh
sudo docker run hello-world
```

### 常用命令

**1. 启动docker**

```sh
sudo systemctl start docker
```

**2. 停止docker**

```sh
sudo systemctl stop docker
```

**3. 重启docker**

```sh
sudo systemctl restart docker
```

**4. 查看docker版本**

```sh
sudo docker version
```

**5. 运行docker镜像**

```sh
sudo docker run hello-world
```

**6. 列出docker镜像**

```sh
sudo docker images
```

**7. 列出docker容器**

```sh
sudo docker ps -a
```

**8. 删除docker镜像**

```sh
sudo docker rmi <image_id>
```

**9. 删除docker容器**

```sh
sudo docker rm <container_id>
```

**10. 进入docker容器**

```sh
sudo docker exec -it <container_id> /bin/bash
```