#!/bin/zsh

echo "Setting up MacOS:"

## Check if homebrew is installed. If not, install it.
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    exit
fi

## Install casks defined in dotfiles/casks.txt
source brewcaskinstall.sh

## Install Spacemacs
source spacemacsinstall.sh

## Copy dotfiles
source dotfilescopy.sh

echo "Setup complete! Please review any errors reported above."