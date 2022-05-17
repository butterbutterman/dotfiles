#!/bin/zsh

echo "Installing and configuring Spacemacs:"

## Check if Emacs is installed. If not, install it.
if ! command -v emacs &> /dev/null
then
    echo "Installing Emacs base..."
    brew install emacs
    exit
fi

## Install Spacemacs
if [ ! -d "$HOME/.emacs.d" ];
then
    echo "Installing Spacemacs..."
    git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
    cp dotfiles/spacemacs ~/.spacemacs
    echo "Spacemacs installed!"
exit
else
    echo "Emacs configurations already exist at ~/.emacs.d"
fi

echo "Spacemacs configuration complete!"