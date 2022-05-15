#!/bin/zsh

echo "doing things..."

#check if homebrew is installed, if not then install it here

#call brew installer (it needs to continue if failure)

echo "Installing spacemacs..."
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp dotfiles/spacemacs ~/.spacemacs
echo "Spacemacs installed!"

#setup configs (vim/ohmyzsh/vscode/etc)

echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "ohmyzsh installed! Oh my!"

echo "Installing Vim configurations..."
cp dotfiles/vimrc ~/.vimrc
echo "Vim configurations installed!"