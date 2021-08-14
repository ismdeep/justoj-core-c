#!/usr/bin/env bash

apt update
apt upgrade -y
apt install -y openssh-server supervisor gcc g++ make cmake git rsync gdb openjdk-11-jdk sbcl guile-2.2 axel
cd /opt && \
  axel https://dl.google.com/go/go1.16.7.linux-amd64.tar.gz && \
  tar -zxvf go1.16.7.linux-amd64.tar.gz && \
  rm -f go1.16.7.linux-amd64.tar.gz && \
  ln -s /opt/go/bin/go /usr/bin/go
cd /opt && \
  axel https://nodejs.org/dist/v14.17.5/node-v14.17.5-linux-x64.tar.xz && \
  xz -d node-v14.17.5-linux-x64.tar.xz && \
  tar -xvf node-v14.17.5-linux-x64.tar && \
  rm -f node-v14.17.5-linux-x64.tar && \
  mv node-v14.17.5-linux-x64/ node && \
  ln -s /opt/node/bin/node /usr/bin/node
