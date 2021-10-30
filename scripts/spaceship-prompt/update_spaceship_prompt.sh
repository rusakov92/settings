#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Updating spaceship prompt"

cd $HOME/.settings/oh-my-zsh/themes/spaceship-prompt && git pull
