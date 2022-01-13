#!/bin/bash

printf "\033[0;92m==> %s\n\033[0m" "Instaling spaceship prompt"

if [ ! -d "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt" ]; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt" --depth=1
    ln -s "$HOME/.settings/oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.settings/oh-my-zsh/themes/spaceship.zsh-theme"
fi
