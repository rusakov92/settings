#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Updating syntax highlighting"

cd $HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting && git pull
