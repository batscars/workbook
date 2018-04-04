#!/bin/bash

dst=$2
logfile=$2/depends.lst
ret=""
apt-get clean

function getDepends()
{
   echo "fileName is" $1>>$logfile
   # use tr to del < >
   ret=`apt-cache depends $1|grep Depends |cut -d: -f2 |tr -d "<>"`
   echo $ret|tee  -a $logfile
}
# 需要获取其所依赖包的包
libs="$1"                  # 或者用$1，从命令行输入库名字

apt-get download $1

# download libs dependen. deep in 3
i=0
while [ $i -lt 3 ] ;
do
    let i++
    echo $i
    # download libs
    newlist=" "
    for j in $libs
    do
        added="$(getDepends $j)"
        newlist="$newlist $added"
        #echo $added
        apt install $added --reinstall -d -y
        #apt-get download $added
    done

    libs=$newlist
done
cp /var/cache/apt/archives/*.deb $2
cp $1* $2
