import os

''' This file defines what the update-kali script should do. '''

# These directories will be removed from your home directory
directories_to_remove = ['Documents', 'Music', 'Pictures', 'Public', 'Templates', 'Videos']

# These kali packages will be installed
packages_to_install = ['most', 'ttf-mscorefonts-installer', 'pydf', 'htop', 'gobuster', 'amass',
                       'golang', 'exif', 'hexedit', 'jq', 'python3-pip', 'python3-venv',
                       'apt-transport-https', 'curl', 'filezilla', 'meld', 'python-pip',
                       'net-tools', 'tmux', 'steghide', 'bash-completion', 'bloodhound']

# These kali packages will be removed
packages_to_remove = []

# These python packages will be installed globally
pip_packages = ['pipenv', 'pylint', 'dnsgen', 'stegcracker']

# These gem packages will be installed globally
gem_packages = ['wpscan']

# These go tools will be installed globally. You will need to have the following settings in your
# .bashrc already:
#
# export GOROOT=/usr/lib/go
# export GOPATH=$HOME/go
# export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# SHINHWA: I've commented out things here that are probably super useful, but
# I don't know how to use them. Later when I do, I will renable them.
golang_modules_to_install = [
                            'github.com/OJ/gobuster',
                            'github.com/tomnomnom/assetfinder',
                            'github.com/projectdiscovery/subfinder/cmd/subfinder',
#                            'github.com/lc/gau',
#                            'github.com/theblackturtle/wildcheck',
                            'github.com/tomnomnom/httprobe',
#                            'github.com/hakluke/hakrawler',
#                            'github.com/tomnomnom/qsreplace',
#                            'github.com/hahwul/dalfox',
#                            'github.com/ffuf/ffuf',
#                            'github.com/dwisiswant0/hinject'
                            ]

# These git repositories will be synced to the 'external repo' directory
external_tools_directory = '/opt'
ext_repositories_to_sync = [
                            'https://github.com/AonCyberLabs/Windows-Exploit-Suggester.git',
                            'https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git',
                            'https://github.com/lgandx/Responder',
                            'https://github.com/fox-it/mitm6'
                            'https://github.com/danielmiessler/SecLists',
                            'https://github.com/swisskyrepo/PayloadsAllTheThings',
                            'https://github.com/payloadbox/xss-payload-list',
                            'https://github.com/Cillian-Collins/dirscraper',
                            'https://github.com/maurosoria/dirsearch'
                            ]

# These git repositories will be synced to the 'personal repo' directory. I use my home directory.
personal_repo_directory = os.getenv("HOME")
personal_repositories_to_sync = [
                                ]

# Next, take a look in the /scripts directory. Every script ending in .sh or .py will be run,
# provided it's # executable. For example, the current scripts install VS Code, Google Chrome and
# Typora. Any script that goes in this directory should be written so it can run multiple times
# without causing problems.
