# node-js

### 安装

```sh
winget install Schniz.fnm
fnm env --use-on-cd | Out-String | Invoke-Expression
fnm use --install-if-missing 20
node -v # 应该打印 `v20.18.0`
npm -v # 应该打印 `10.8.2`】
```

### 配置

```sh
 $PROFILE # 查看配置文件目录
```

```sh
nano C:\Users\<username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```

添加以下内容：

```powershell
fnm env --use-on-cd | Out-String | Invoke-Expression
```

保存并退出，然后重启 PowerShell 即可。

### 切换版本

使用`NVM`可以方便地管理多个 Node.js 版本。

**安装 NVM**

```sh 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.ps1 | Invoke-Expression
```

**查看已安装的 Node.js 版本**
```sh
nvm ls
```
**安装指定版本的 Nosde.js**
```sh
nvm install 18.20.0 
```
**切换到指定版本的 Node.js**
```sh
nvm use 18.20.0
```
