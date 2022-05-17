#!/bin/zsh

echo "Copying dotfiles (and other configuration files):"

## TODO instead of copying and pasting the same if/else a billion times, make this a loop
## vimrc
if [ ! -f "$HOME/.vimrc" ];
then
    echo "Copying Vim configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Vim configurations copied!"
exit
else
    ###### rewrite this as a prompt to overwrite existing vimrc
    echo "Installing Vim configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Vim configurations installed!"
fi

## zshrc
if [ ! -f "$HOME/.zshrc" ];
then
    echo "Copying zsh configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Zsh configurations copied!"
exit
else
    ###### rewrite this as a prompt to overwrite existing zshsrc
    echo "Copying zsh configurations..."
    cp dotfiles/vimrc ~/.vimrc
    echo "Zsh configurations copied!"
fi

## spacemacs
if [ ! -f "$HOME/.spacemacs" ];
then
    echo "Copying spacemacs configurations..."
    cp dotfiles/spacemacs ~/.spacemacs
    echo "Spacemacs configurations copied!"
exit
else
    ###### rewrite this as a prompt to overwrite existing spacemacs
    echo "Copying spacemacs configurations..."
    cp dotfiles/spacemacs ~/.spacemacs
    echo "Spacemacs configurations copied!"
fi
