@echo off
chcp 65001

:: Git 使用者名稱
set user_name=brianvan555
:: Git 使用者信箱
set user_email=billy850424@gmail.com

git config --global user.name "%user_name%"
git config --global user.email "%user_email%"

echo 設定 User Details 完成
pause