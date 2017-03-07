#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 1
fi

yum -y install gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel

curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh

rvm install 2.1
rvm use 2.1 --default
