@echo off
chcp 65001

:: GitHub 使用者名稱
set user_name=type your GitHub user name here
:: GitHub 使用者信箱
set user_email=type your GitHub email address here

git config --global user.name "%user_name%"
git config --global user.email "%user_email%"

echo User Details setup successful
pause
