#!/usr/bin/env bash

# I'm sure the reasons were good, but my god what a mess trying to get anything in Python
# to work these days. https://www.kali.org/docs/general-use/using-eol-python-versions/

if [ -d /home/$USER/.pyenv ]; then
  echo "pyenv already installed."
  exit 0
fi

echo Installing pyenv
curl https://pyenv.run | bash

pyenv install 2.7.18