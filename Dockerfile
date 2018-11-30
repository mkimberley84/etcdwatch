FROM        centos:latest


RUN         yum install -y etcd

VOLUME      /data


ENV         ETCDSERVER_IP   etcdserver_ip



CMD         export  ETCDCTL_API=3; \
            /bin/etcdctl watch /message