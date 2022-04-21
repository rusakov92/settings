#!/bin/bash

if [ ! -d "$HOME/.settings/oh-my-zsh/plugins/you-should-use" ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Installing you should use"
    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "$HOME/.settings/oh-my-zsh/plugins/you-should-use"
else
    printf "\033[0;92m==> %s\n\033[0m" "Updating you should use"
    cd $HOME/.settings/oh-my-zsh/plugins/you-should-use && git pull
fi
