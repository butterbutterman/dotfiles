#!/bin/zsh

## vimrc
if [ ! -f "$HOME/.vimrc" ];
then
    echo "Installing Vim configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Vim configurations installed!"
exit
else
    ###### rewrite this as a prompt to overwrite existing vimrc
    echo "Installing Vim configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Vim configurations installed!"
fi