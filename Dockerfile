FROM        centos:latest


RUN         yum install -y etcd

VOLUME      /data


ENV         ETCDSERVER_IP   etcdserver_ip #not needed



CMD         export  ETCDCTL_API=3; \
            /bin/etcdctl watch /message