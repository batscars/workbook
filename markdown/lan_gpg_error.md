##### 内网环境第三方源出现GPG key error
```
# 在外网某台机器获取public key
gpg --keyserver keyserver.ubuntu.com --recv pub-key
# 拷贝当前用户根目录下生成的.gpg文件夹至内网对应用户根目录
# 导入gpg key 
gpg --export --armor pub-key | sudo apt-key add -

```
