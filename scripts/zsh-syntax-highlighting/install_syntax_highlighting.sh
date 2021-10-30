#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Installing syntax highlighting"

if [ ! -d "$HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting"
fi
