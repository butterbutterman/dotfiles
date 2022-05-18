#!/bin/zsh

echo "Setting up oh-my-zsh:"

if [ ! -d "$HOME/.oh-my-zsh" ];
then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "ohmyzsh installed! Oh my!"
exit
else
    echo "oh-my-zsh already installed!"
fi