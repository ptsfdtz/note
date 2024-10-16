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