#!/usr/bin/env bash

# some basic tools

apt-get update && apt-get upgrade

apt install -y gcc g++ wget unzip
apt install -y supervisor

ufw enable
ufw allow 22

