#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Installing autosuggestions"

if [ ! -d "$HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions"
fi
