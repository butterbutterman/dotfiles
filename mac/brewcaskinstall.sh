#!/bin/zsh

echo "Installing applications listed in conf/casks.txt via brew install --cask ..."

## Loop through the items in dotfiles/casks.txt and install each
while read c; do
    brew install --cask $c
done <conf/casks.txt

echo "Applications installed!"
