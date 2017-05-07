#!/usr/bin/env bash

alias install='yum -y '
yum -y update

yum -y install yum-utils


yum group install -y "Development Tools"

yum install -y git unzip wget curl xclip

yum -y install epel-release
yum -y install supervisor

#yum -y install python-setuptools
#easy_install supervisor
#easy_install superlance
git clone https://github.com/Supervisor/initscripts

#tmpdir=`mktemp -d`
#cd $tmpdir
#git clone https://github.com/Supervisor/initscripts
#cp initscripts/centos-systemd-etcs /usr/lib/systemd/system/supervisord.service
#cd /tmp
#rm $tmpdir -rf

#supervisord


#yum -y install https://centos7.iuscommunity.org/ius-release.rpm
#yum -y install python36u

systemctl daemon-reload
systemctl enable supervisord.service
systemctl start supervisord
