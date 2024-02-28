# Git

## 一.安装 Git

1. 官网下载

[git](https://git-scm.com/downloads)

2. 终端下载

```sh
winget install --id Git.Git -e --source winget
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

4. 配置 git

进入 gitconfig 文件

```sh
vim ~/.gitconfig
```

添加以下内容

```sh
[user]
    name=ptsfdtz
    email=pitousanfadetuzi@gmail.com
[http]
    proxy=http://127.0.0.1:7890
[https]
    proxy=http://127.0.0.1:7890
[init]
    defaultBranch=main
[pull]
    ff=only
```

令 git 使用 clash 代理

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

- 回退到上一个版本

```sh
git reset --hard HEAD^
```

- 回退到上上个版本

```sh
git reset --hard HEAD^^
```

- 回退到指定版本

```sh
git reset --hard HEAD^^
```

- 分支相关的操作

```sh
git branch ##查看分支

git branch <name> ##创建分支

git checkout <name> ##切换分支

git checkout -b <name> ##创建+切换分支

git merge <name> ##合并某分支到当前分支

git merge --no-ff -m "..." <name> ##使用普通模式合并分支，可以显示合并历史

git branch (-m | -M) <oldbranch> <newbranch> ##重命名分支

git branch -d <name> ##删除分支

git branch -D <name> ##强行删除未合并分支

git log --graph ##查看分支合并图

git log --graph --pretty=oneline --abbrev-commit ##也可以查看分支合并图
```
