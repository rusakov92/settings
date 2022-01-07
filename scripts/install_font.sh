#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Installing Jetbrains Mono font"

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
