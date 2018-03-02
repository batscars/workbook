#### [Kubespray DNS modes](https://github.com/kubernetes-incubator/kubespray/blob/master/docs/dns-stack.md)
- dns_mode: 配置集群DNS模式

1. dnsmasq_kubedns

   使用dnsmasq作为dns服务器，对于集群内部的service，将会分配给kubedns/skydns做域名解析，对于集群外部的service将使用upstream_dns_servers中的server进行域名解析

2. kubedns

   所有的域名解析操作都通过kubedns/skydns来实现

- resolvconf_mode: 配置hostNetwork: true的PODs以及non-k8s容器的DNS模式

1. docker_dns

    以下域名服务器将会被加入到docker-dns:(
    cluster nameserver
    upstream_dns_servers 
    host system nameservers
)。对于集群中正常的pod，k8s会忽略这些配置，而是根据dns_mode来设置DNS，对于hostNetwork: true PODs，或者不是由k8s管理的containers，将通过docker来设置DNS。host system nameservers主要是用于cluster DNS建立的初期或者没有完全建立成功的时候，作为一个备用的域名解析服务器

2. host_resolvconf
   
   dns_early时期将使用upstream_dns_servers and nameservers作为域名解析服务器,之后将使用集群域名服务器做域名解析操作，将其他的作为备用
