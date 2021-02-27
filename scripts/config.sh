#!/bin/sh

# Put any misc configuration here.

git config --global pull.rebase false

# I can't get this to work in the gomodules section, so we'll just do it live.
GO111MODULE=on go get -v github.com/OWASP/Amass/v3/...
