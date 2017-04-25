#!/usr/bin/env bash

# make swap disk and active
# also active when boot
# useful when use server with no default SWAP. e.g. vultr


dd if=/dev/zero of=/swapfile count=2048 bs=1M
ls / | grep swapfile
chmod 600 /swapfile
ls -lh /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile   none    swap    sw    0   0" >>  /etc/fstab

