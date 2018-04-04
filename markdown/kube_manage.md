##### HELM的使用
```
# 安装应用
helm install --name release-name -f values.yaml chart-name

# 卸载应用
helm del --purge release-name

# 查看helm安装列表
helm list -a

# 安装本地应用
helm dep build chart-dir
helm install chart-dir
```

##### kubectl的使用
```
# 通过yaml文件创建deployment，pod或service等
kubectl create -f yaml/busybox.yaml

# 给container发送执行命令
kubectl -n default exec -ti busybox -- nslookup kubernetes # 查看dns状态

# scale up deployments
kubectl -n kube-system scale deployment deploy-name --replicas=num

# 将某个pod映射到本地的某个端口从而可以使用localhost:port的方式访问
kubectl -n namespace port-forward pod-name port

# 获取组件信息
kubectl get ep
kubectl get pod
kubectl get node
kubectl get svc
kubectl describe node node-name
...

# 给node打标签
kubectl label nodes node-name a=b
```
