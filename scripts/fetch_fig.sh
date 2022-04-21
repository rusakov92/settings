#!/bin/bash

brew list --cask | grep -q fig
if [[ $? -eq 0 ]]; then
    printf "\033[0;92m==> %s\n\033[0m" "Updating Fig"
    brew upgrade fig
    exit 0
fi

# A hack if .zprofile isn't yet a symlink
if  [ ! -L ~/.zprofile ]; then
    if [ -f ~/.zprofile ]; then
        printf "\033[0;92m==> %s\n\033[0m" "Backing old .zprofile file to ~/.zprofile_back"
        mv ~/.zprofile ~/.zprofile_back
    fi
    printf "\033[0;92m==> %s\n\033[0m" "Symlinking .zprofile file"
    ln -s ~/.settings/.zprofile ~/.zprofile
fi

printf "\033[0;92m==> %s\n\033[0m" "Installing Fig"
brew install --cask fig
fig
git checkout ~/.settings/.zshrc ~/.settings/.zprofile
