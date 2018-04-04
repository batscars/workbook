##### 将pip install的源更改为国内源，以豆瓣源为例
```
touch /etc/pip.conf
sed -i.backup -r \
    's/^index-url\s*=\s*.+$/index-url = http:\/\/pypi.douban.com\/pypi\/simple\//' \
    /etc/pip.conf
diff "/etc/pip.conf" "/etc/pip.conf.backup" &> /dev/null
if [ $? -eq 0 ]; then
cat > /etc/pip.conf <<EOF
[global]
index-url = http://pypi.douban.com/simple/
[install]
trusted-host=pypi.douban.com
EOF
fi
```
