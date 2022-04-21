#!/bin/bash

if [ ! -d "$HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions" ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Installing autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions"
else
    printf "\033[0;92m==> %s\n\033[0m" "Updating autosuggestions"
    cd $HOME/.settings/oh-my-zsh/plugins/zsh-autosuggestions && git pull
fi
