#### 内网环境部署nginx服务器
##### step 1: 下载相关组件源码
```
# pcre [https://sourceforge.net/projects/pcre/files/pcre/8.41/pcre-8.41.tar.gz/download](https://sourceforge.net/projects/pcre/files/pcre/8.41/pcre-8.41.tar.gz/download)
# zlib [http://www.zlib.net/zlib-1.2.11.tar.gz](http://www.zlib.net/zlib-1.2.11.tar.gz)
# nginx [https://nginx.org/download/nginx-1.12.2.tar.gz](https://nginx.org/download/nginx-1.12.2.tar.gz)

```
##### step 2: 源码安装
```
# 安装pcre
tar -zxvf pcre-8.41.tar.gz
cd pcre-8.41
./configure
make
make install

# 安装zlib
tar -zxvf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure
make
make install

# 安装nginx
tar -zxvf nginx-1.12.2.tar.gz
cd nginx-1.12.2
./configure
make
make install
```
##### step 3: 配置nginx
启动:
```
/usr/local/nginx/sbin/nginx
```
在/usr/local/nginx/conf/nginx.conf http中新添加一个需要用server段:
```
server{
    listen 9090;
    server_name test;
    location / {
        root /data/static_data;
        access_log on;
        autoindex on;
    }
}
```
重启:
```
/usr/local/nginx/sbin/nginx  -s reload
```

