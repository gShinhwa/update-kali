#!/bin/bash
GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

# Check if snap is installed
if [ -f "/bin/snap" ]; then
    exit 0
fi

sudo systemctl enable apparmor
sudo systemctl start apparmor

sudo apt install snapd
sudo systemctl enable snapd
sudo systemctl start snapd
sudo snap install core

