# Powershell

## 一.开启 powershell

1. `win + R`输入 powershell

2. 管理员身份运行`ctrl + shift + enter`

## 二.文件相关命令

1. 进入文件夹

```sh
cd ./
```

2. 返回上级目录

```sh
cd ..
```

3. 创建新文件

```sh
ni -ItemType Directory -Path <FolderPath>
```

4. 删除文件

```sh
rm <FilePath>
```

5. 移动文件

```sh
mv <SourcePath> <DestinationPath>
```

6. 使用 vscode 打开文件

```sh
code .
```

## 三. 常用命令

### 环境变量

1. 显示环境变量

```sh
gci env:
```

2. 设置环境变量

```sh
$env:Path += <address>
```

### 网络配置

1. 显示本机 ip

```sh
ipconfig
```

2. 测试网络链接

```sh
ping <IP>
```

3. 关闭防火墙

```sh
netsh advfirewall set allprofiles state off
```

4. 显示网络统计信息

```sh
netstat -an
```

5. 显示本地路由表

```sh
route print
```

6. 配置防火墙规则

```sh
Get-NetFirewallRule
```
