#!/usr/bin/env bash

# some basic tools

apt-get update && apt-get upgrade

apt install -y gcc g++ wget unzip curl ufw
apt install -y supervisor
apt-get install -y software-properties-common python-software-properties apt-transport-https

ufw enable
ufw allow 22

supervisord
