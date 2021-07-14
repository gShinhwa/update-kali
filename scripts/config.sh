#!/bin/sh

# Put any misc configuration here.

git config --global pull.rebase false

# I can't get this to work in the gomodules section, so we'll just do it live.
GO111MODULE=on go get -v github.com/OWASP/Amass/v3/...

echo "*****************"
echo "Can't figure out how to automate this install so you'll have to do Burpsuite yourself."
echo "https://portswigger.net/burp/communitydownload"
echo "*****************"

# Make it so nmap can be run without sudo.
# You probably want to put this in your .bashrc or equiv:
#   alias nmap='nmap --privileged'
setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap