#!/bin/bash

if [ ! -d "$HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting" ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Installing syntax highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting"
else
    printf "\033[0;92m==> %s\n\033[0m" "Updating syntax highlighting"
    cd $HOME/.settings/oh-my-zsh/plugins/zsh-syntax-highlighting && git pull
fi
