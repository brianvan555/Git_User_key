@echo off
chcp 65001

:: GitHub 使用者名稱
set user_name=type your GitHub user name here
:: GitHub 使用者信箱
set user_email=type your GitHub email address here

git config user.name "%user_name%"
git config user.email "%user_email%"

echo User Details setup successful
pause
