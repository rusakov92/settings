#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Symlinking .zprofile file"

if [ -L ~/.zprofile ]; then
    printf "\033[0;93m==> %s\n\033[0m" "Symlink for .zprofile already exists, skiping symlink"
    exit 0
fi

if [ -f ~/.zprofile ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Backing old .zprofile file to ~/.zprofile_back"
    mv ~/.zprofile ~/.zprofile_back
fi

ln -s ~/.settings/.zprofile ~/.zprofile
