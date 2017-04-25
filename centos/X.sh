#!/usr/bin/env bash

# env
sudo yum -y groupinstall "X Window System" "Desktop" "Fonts" "General Purpose Desktop"
sudo yum -y install firefox Xvfb libXfont Xorg
# sudo yum -y groupinstall "GNOME Desktop" "Graphical Adminstration Tools"

