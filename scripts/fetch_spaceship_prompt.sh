#!/bin/bash

if [ ! -d "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt" ]; then
    printf "\033[0;92m==> %s\n\033[0m" "Instaling spaceship prompt"
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt" --depth=1
    ln -s "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.settings/oh-my-zsh/themes/spaceship.zsh-theme"
else
    printf "\033[0;92m==> %s\n\033[0m" "Updating spaceship prompt"
    cd $HOME/.settings/oh-my-zsh/themes/spaceship-prompt && git pull
fi
