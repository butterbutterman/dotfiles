#!/bin/zsh

## Check if Emacs is installed. If not, install it.
if ! command -v emacs &> /dev/null
then
    echo "Installing Emacs base..."
    brew install emacs
    exit
fi

## Install Spacemacs
echo "Installing spacemacs..."
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp dotfiles/spacemacs ~/.spacemacs
echo "Spacemacs installed!"