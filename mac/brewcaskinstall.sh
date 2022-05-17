#!/bin/zsh

#do something to skip failed casks to just write this as a foreach loop in bash
#split sha and non sha loops and handle failures
brew install --cask $(cat dotfiles/casks.txt)