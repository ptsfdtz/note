@echo off

echo.
echo 以下软件将被安装:
echo - Git
echo - Visual Studio Code
echo - Google Chrome
echo - 7zip
echo - 微信
echo - QQ
echo.

echo 请按任意键继续安装软件...
pause

echo 开始安装软件...

echo 安装 Git
winget install --id Git.Git -e

echo 安装 Visual Studio Code
winget install --id Microsoft.VisualStudioCode -e

echo 安装 Google Chrome
winget install --id Google.Chrome -e

echo 安装 7zip
winget install --id 7zip.7zip -e

echo 安装 微信
winget install --id Tencent.WeChat -e

echo 安装 QQ
winget install --id Tencent.QQ -e

echo 所有软件安装完成
pause
