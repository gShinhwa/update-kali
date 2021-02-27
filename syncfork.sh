#!/bin/sh

# Add a new remote upstream repository
git remote add upstream https://github.com/rafaelh/update-kali

# Sync your fork
git fetch upstream
git checkout main
git merge upstream/main