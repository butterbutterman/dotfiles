#!/bin/zsh

echo "Copying dotfiles (and other configuration files):"

## need to remove the directory name for file copying - saving it here to reuse
DOTFILESDIR="dotfiles"

## Loop through each file in dotfiles/, check if the corresponding file already exists in ~/, copy if not, skip if so
for d in $DOTFILESDIR/*
do
    if [ ! -f "$HOME/.${d#"$DOTFILESDIR"/}" ]; then
        echo "Copying ${d#"$DOTFILESDIR"/} configurations..."
        cp "$d" "$HOME/.${d#"$DOTFILESDIR"/}"
        echo "${d#"$DOTFILESDIR"/} configurations copied!"
    else
        echo "$HOME/.${d#"$DOTFILESDIR"/} is already present, copying skipped."
    fi
done