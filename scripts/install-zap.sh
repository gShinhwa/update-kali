#!/bin/bash
GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

ZAP_VER="2.10.0"
ZAP_DIR="/opt/ZAP_${ZAP_VER}"

# Check if ZAP is installed
if [ -f "${ZAP_DIR}/zap.sh" ]; then
    exit 0
fi

pushd /opt
wget https://github.com/zaproxy/zaproxy/releases/download/v${ZAP_VER}/ZAP_${ZAP_VER}_Linux.tar.gz
tar -zxf ZAP_${ZAP_VER}_Linux.tar.gz
rm ZAP_${ZAP_VER}_Linux.tar.gz
popd

