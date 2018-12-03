FROM        centos:latest

COPY        files/ /

RUN         yum install -y etcd && \
            chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT  /usr/bin/entrypoint.sh
