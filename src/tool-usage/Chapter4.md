# wireguard

## 一.安装 wireguard

### 在服务端安装

1. 获取 root 权限

```sh
sudo i
```

2. 安装 wireguard 软件

```sh
apt install wireguard resolvconf -y
```

3. 开启ip转发

```sh
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sysctl -p
```
## 二.配置服务端

### 配置服务端公钥和私钥

1. 进入配置存储目录，调整目录权限
```sh
sudo su #切换到root用户
cd /etc/wireguard/
umask 077 #调整目录默认权限
```
2. 生成服务器密钥
```sh
wg genkey > server.key #生成私钥
wg pubkey < server.key > server.key.pub #通过私钥生成公钥
```
3. 生成客户端密钥(client1)
```sh
wg genkey > client1.key #生成私钥
wg pubkey < client1.key > client1.key.pub #通过私钥生成公钥
```
**显示所有生成的密钥**

```sh
cat server.key && cat server.key.pub && cat client1.key && cat client1.key.pub
```

**创建服务器配置文件**
```sh
nano /etc/wireguard/wg0.conf
```

添加服务器配置文件内容
```sh
[Interface]
PrivateKey = $(cat server.key) # 填写本机的privatekey 内容
Address = 10.0.8.1 #本机虚拟局域网IP

PostUp   = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -A FORWARD -o wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
PostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -D FORWARD -o wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE
#注意eth0需要为本机网卡名称

ListenPort = 50814 # 监听端口
DNS = 8.8.8.8

[Peer]
PublicKey =  $(cat client1.key.pub)  #自动client1的公钥
AllowedIPs = 10.0.8.10/32 #客户端所使用的IP" > wg0.conf
```

**查看你的默认网卡**
```sh
ip route list table main default
```
如果网卡不正确**更改默认网卡 将 `eth0` 改为`enp4s0`**

**启动服务**
```sh
wg-quick up wg0 #启动wg0
wg-quick down wg0 #关闭wg0
```

### 配置客户端

1. 下载客户端

下载链接：https://www.wireguard.com/install/

2. 配置客户端

新建隧道

3. 配置隧道

```sh
[Interface]
PrivateKey = 6M8HEZioew+vR3i53sPc64Vg40YsuMzh4vI1Lkc88Xo= #此处为client1的私钥
Address = 10.0.8.10 #此处为peer规定的客户端IP
MTU = 1500

[Peer]
PublicKey = Tt5WEa0Vycf4F+TTjR2TAHDfa2onhh+tY8YOIT3cKjI= #此处为server的公钥
AllowedIPs = 10.0.8.0/24 #此处为允许的服务器IP
Endpoint = 114.132.56.178:50814 #服务器对端IP+端口
```

### 配置防火墙

**允许端口转发**
1. 进入配置文件
```sh
sudo vim /etc/sysctl.conf
```
2. 编辑内容
```sh
net.ipv4.ip_forward=1
```
3. 重启防火墙
```sh
sudo sysctl -p
```

**重启防火墙**

1. 查看防火墙是否启动成功
```sh
sudo ufw status
```
2. 如果防火墙未启动，则启动防火墙
```sh
ufw allow 51820/udp
```

### 查看是否连接成功

**客户端**
```sh
ping 10.0.8.1
```
**服务器**
```sh
sudo tcpdump -envi wg0
```

**设置服务器开机启动wireguard**
```sh
systemctl enable wg-quick@wg0
```

### 参考

1. [bilibili](https://www.bilibili.com/video/BV1uT411w7Tq/?spm_id_from=333.337.search-card.all.click)

2. [Mr-addirt](https://mr-addict.github.io/notes/tutorial/wireguard.html)