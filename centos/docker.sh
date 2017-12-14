#!/usr/bin/env bash
# for CentOS 7+

# remove old
yum remove docker docker-common docker-selinux docker-engine > /dev/null 2>&1

#yum install -y yum-utils device-mapper-persistent-data lvm2
#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#yum -y install docker-ce

# ?
yum -y install docker

systemctl start docker
systemctl status docker
systemctl enable docker


# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

