@echo off
chcp 65001

:: SSH Key file name
set ssh_file_name=id_rsa
:: SSH Key file path (without file name)
:: %userprofile% = Folder path = C:\Users\user\
:: %userprofile%\OneDrive\桌面\ = The file is located at C:\Users\user\OneDrive\桌面\
set mySSH_path=%userprofile%\OneDrive\桌面\

:: Default path (Do not make changes unless necessary)
set ssh_home=.ssh
set "ssh_home_path=%userprofile%\%ssh_home%\"
set file_path=%mySSH_path%%ssh_file_name%

if exist "%mySSH_path%\%ssh_file_name%" (
  echo Step 0: Process start.
) else (
  echo Target doesn't exist，PLZ set or update mySSH_path parameter
  pause
  exit(0)
)


:: Check ssh_key_home folder is exist or not. 
if exist %ssh_home_path% (
  echo Step 1: SSH Keys folder is exist.
) else (
  mkdir %ssh_home_path%
  echo Step 1: Creat the ".ssh" folder in %userprofile%.
)

:: Check ssh_key is exist or not.
if exist "%ssh_home_path%/%ssh_file_name%" (
  echo Step 2: Failed! %ssh_file_name% has existed at %ssh_home_path%, ignore this message if you have executed the file in this computer.
) else (
  copy %file_path% %ssh_home_path%
  echo Step 2: COPY %file_path% to %ssh_home_path%.
)

:: Chang permission of key

:: Use key to connect github server.
echo Step 3: Test SSH connection
ssh -T -i "%ssh_home_path%/%ssh_file_name%" git@github.com


echo NOTE: "Hi xxx! You've successfully authenticated....." means successful

echo SSH Key copied done.

echo press any key to exit.
pause
