#!/bin/bash

function closecontainer {
  echo "Closing down"
  exit 0
}

trap closecontainer EXIT HUP INT QUIT PIPE TERM

export  ETCDCTL_API=3
while true
do
  /bin/etcdctl get /message
  sleep 5
done
