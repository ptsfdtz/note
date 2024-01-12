# Git use

## 一.安装 Git

```sh
https://git-scm.com/downloads
```

## 二.配置 Git

在 powershell 中输入`git`检测是否配置完成

### 配置用户

1. 初始化 Git 仓库

```sh
git init
```

2. 设置用户名和邮箱

```sh
git config user.name 'github用户名'
git config user.email '邮箱'
```

3. 查看邮箱用户配置

```sh
git config --list
```

## 三.初次提交模板

1. 项目初始化

```sh
git init
echo "# README" > README.md
git add README.md
git commit -m "First commit"
```

2. 添加远程仓库链接

```sh
git remote add origin #仓库链接
```

3. 默认分支 main

```sh
git branch -M main
```

4. 提交到 github 仓库

```sh
git push -f -u origin main
```

## 四.常用命令

- 查看当前状态

```sh
git status
```

- 查看提交记录

```sh
git log
```
