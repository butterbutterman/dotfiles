#!/bin/zsh

echo "Installing applications listed in dotfiles/casks.txt via brew install --cask ..."

## Loop through the items in dotfiles/casks.txt and install each
while read c; do
    brew install --cask $c
done <dotfiles/casks.txt

echo "Applications installed!"