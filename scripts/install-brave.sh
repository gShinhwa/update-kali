#!/bin/bash
GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

# === Exit without proceeding if run in WSL ===
if [ -f "/mnt/c/Windows/System32/wsl.exe" ]; then
    exit 0
fi

# Check if Brave is installed
if [ -f "/etc/apt/sources.list.d/brave-browser-release.list" ]; then
    exit 0
fi

if [ $(sudo dpkg-query -W -f='${Status}' brave-browser 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    echo -ne $GREEN"[+] "$ENDCOLOR; echo "Installing Brave Browser"
    cd ~
    sudo apt install -y apt-transport-https curl
    curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install -y brave-browser
fi
