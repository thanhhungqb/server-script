#!/usr/bin/env bash

los=centos
python -mplatform | grep -qi Ubuntu && los=ubuntu || los=centos

if [ $los -eq "ubuntu" ]
then
    echo "Ubuntu"
    bp=/etc/supervisor/conf.d
    alias icmd="apt-get -y "
else
    echo "CentOS"
    bp=/etc/supervisord.d
    alias icmd="yum -y "
fi

