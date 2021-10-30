#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Symlinking .zshrc file"

if [ -L ~/.zshrc ]; then
    printf "\033[0;93m==> %s\n\033[0m" "Symlink§ for .zshrc already exists, skiping symlink"
    exit 0
fi

if [ -f ~/.zshrc ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Backing old .zshrc file to ~/.zshrc_back"
    mv ~/.zshrc ~/.zshrc_back
fi

ln -s ~/.settings/.zshrc ~/.zshrc
