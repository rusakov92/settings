#!/bin/bash

brew tap | grep -q homebrew/cask-fonts
if [ $? -eq 1 ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Taping homebrew/cask-fonts"
    brew tap homebrew/cask-fonts
fi

brew list --cask | grep -q font-jetbrains-mono
if [ $? -eq 1 ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Installing Jetbrains Mono font"
    brew install --cask font-jetbrains-mono
else
    printf "\033[0;92m==> %s\n\033[0m" "Updating Jetbrains Mono font"
    brew upgrade font-jetbrains-mono
fi
