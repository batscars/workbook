##### gitlab跟踪远程github repo的更新(以github kubespray为例)
###### step 1
1.在github上新建一个repo kubespray，然后clone到本地
```
git clone git@github.com:zhangbin-intellif/kubespray.git
```
2.从https://github.com/kubernetes-incubator/kubespray下载源码zip方式，解压后拷贝到本地repo kubespray下

###### step 2 将代码更新到远端master分支
```
git add .
git commit -a -m "initial kubespray"
git push origin master
```
###### step 3 添加远端分支
```
git remote add upstream https://github.com/kubernetes-incubator/kubespray
git pull upstream master
git push origin master
```

###### step 4 同步远端分支的更新
```
git pull upstream master
#如果存在冲突，解决冲突后先执行git commit
git push origin master
```
##### github跟踪远程github repo的更新
fork后创建upstream跟踪远端更新即可
