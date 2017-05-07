#!/usr/bin/env bash

# some basic tools

apt-get -y update && apt-get -y upgrade

apt install -y gcc g++ wget unzip curl ufw
apt install -y supervisor
supervisord
service supervisor restart

apt-get install -y software-properties-common python-software-properties apt-transport-https

ufw enable
ufw allow 22

