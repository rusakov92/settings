#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Updating autosuggestions"

cd $HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions && git pull
