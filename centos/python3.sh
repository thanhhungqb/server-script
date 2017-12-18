#!/usr/bin/env bash

ver=3.6.0
#ver=3.5.2

yum -y install gcc
yum install zlib-devel

cd /usr/src
wget https://www.python.org/ftp/python/$ver/Python-$ver.tgz

tar xzf Python-$ver.tgz

cd Python-$ver
./configure
#make altinstall
make install

cd ..
rm Python-$ver.tgz

pip install --upgrade pip
pip install virtualenv

virtualenv -p python3.5 /opt/env

