#!/bin/zsh

printf "\033[0;93m==> %s\n\033[0m" "Pulling latest changes from repository..."

cd ~/.settings && git pull
