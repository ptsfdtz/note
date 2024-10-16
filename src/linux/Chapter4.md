# qBittorent

## 安装 qBittorent

Ubuntu 或者 Debian:

```sh
apt install -y qbittorrent-nox
```

CentOS:

```sh
yum install -y qbittorrent-nox
```

## 启动

安装完成后启动 qBittorrent：

```sh
qbittorrent-nox
```

访问地址、用户名、密码：

```sh
******** Information ********
To control qBittorrent, access the Web UI at http://localhost:8080
The Web UI administrator user name is: admin
The Web UI administrator password is still the default one: adminadmin
This is a security risk, please consider changing your password from program preferences
```

让 qBittorrent 启动后在后台运行可以输入：

```sh
qbittorrent-nox -d
```

## 常用命令

启动 qBittorrent：

```sh
qbittorrent-nox
```

在后台启动 qBittorrent：

```sh
qbittorrent-nox -d
```

查看版本：

```sh
qbittorrent-nox -v
```

启动 qBittorrent 并指定 Web 面板的端口：

```sh
qbittorrent-nox --webui-port=2333
```

上面指定 2333 端口。

查看帮助：

```sh
qbittorrent-nox -h
```
