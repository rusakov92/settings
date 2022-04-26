#!/bin/bash

brew list --cask | grep -q fig
if [[ $? -eq 0 ]]; then
    printf "\033[0;92m==> %s\n\033[0m" "Updating Fig"
    fig update
    exit 0
fi


printf "\033[0;92m==> %s\n\033[0m" "Installing Fig"
brew install --cask fig
cd ~/.settings && fig
