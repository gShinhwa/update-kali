#!/bin/bash
GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

# Check if sgn is installed
if [ -f "/usr/local/bin/sgn" ]; then
    exit 0
fi

# sgn is required by PEzor
pushd /tmp
wget https://github.com/EgeBalci/sgn/releases/download/2.0/sgn_linux_amd64_2.0.zip
sudo unzip -jd /usr/local/bin /tmp/sgn_linux_amd64_2.0.zip
popd

