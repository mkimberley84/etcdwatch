FROM        ubuntu:xenial

RUN         apt-get update -y && apt-get upgrade -y

COPY        . /app

RUN         chmod +x /app/watch.sh

WORKDIR     /app

CMD         curl -L https://github.com/coreos/etcd/releases/download/v3.3.1/etcd-v3.3.1-linux-amd64.tar.gz -o etcd-v3.3.1-linux-amd64.tar.gz    ;\
            tar xzvf etcd-v3.3.1-linux-amd64.tar.gz ;\
            cd etcd-v3.3.1-linux-amd64 ;\
            sudo cp etcd /usr/local/bin/ ;\
            sudo cp etcdctl /usr/local/bin/ ;\

ENTRYPOINT  ["/bin/bash"]
CMD         [ "/app/watch.sh"]


