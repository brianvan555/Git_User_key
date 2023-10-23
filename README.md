# Git_User_key 快速設定 (Windows)
為了讓電腦具有存取個人GitHub權限，提升作業速度，例如: 利用SSH進行複製而不必用HTTP的方式登入、VScode 推送權限等，可依照下方步驟進行批次檔案設定。
詳細步驟可參考 [在Windows上建立GitHub的SSH key](https://medium.com/@brian-liu/在windows上建立github的ssh-key-564fc14a89ea)

### 1. 設定 User Details
全域版本: github_set_global_user_detail.bat
個別Repo版本: github_set_user_detail.bat

```bash
set user_name=[GitHub名稱]
set user_email=[GitHub註冊的EMAIL]
```

### 2. 複製 SSH Key 並測試
檔案: github_ssh_copy_key 

```bash
set ssh_file_name=[檔案名稱]
set mySSH_path=[檔案路徑]
```
ssh_file_name 不含附檔名

mySSH_path 之後執行批次檔時所有檔案須放置的位置 (不含檔案名)

---
#### 在同一台電腦上僅需執行過一次就會記住，除非有洗掉或蓋掉才要重新執行這兩個檔案
---
