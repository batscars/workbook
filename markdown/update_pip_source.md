##### 将pip install的源更改为国内源，以豆瓣源为例
```
if [ -f "/etc/pip.conf" ];then
  rm -rf /etc/pip.conf
fi
cat > /etc/pip.conf <<EOF
[global]
index-url=http://pypi.douban.com/simple/
trusted-host=pypi.douban.com
EOF
```
