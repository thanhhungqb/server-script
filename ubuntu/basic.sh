#!/usr/bin/env bash

# some basic tools

apt-get update && apt-get upgrade

apt install -y gcc g++ wget unzip

ufw enable
ufw allow 22

