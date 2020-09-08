#!/bin/bash
GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

# === Exit without proceeding if run in WSL ===
if [ -f /mnt/c/Windows/System32/wsl.exe ]; then
    exit 0
fi

# SHINHWA: So many things change/break from one Impacket to the next
# that I'm forcing the version here to one I know works for the things
# I know to do with it. 
echo -ne $GREEN"[+] "$ENDCOLOR; echo "Installing Impacket 0.9.19"
cd /opt
if [ -d "/opt/impacket" ]; then
    sudo rm -rf /opt/impacket
fi
sudo git clone -b impacket_0_9_19 https://github.com/SecureAuthCorp/impacket.git
cd impacket
sudo pip install .
cd ~
fi
