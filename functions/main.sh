#!/bin/bash

function make_shell_settings() {
    (cd ~/.settings && make $*)
}

function update_shell_settings() {
    zmodload zsh/datetime
    if ! source ~/.settings/cache/last-update 2>/dev/null || [[ -z "$LAST_UPDATE" ]]; then
        echo "LAST_UPDATE=$(( EPOCHSECONDS / 60 / 60 / 24 ))" > ~/.settings/cache/last-update
        return
    fi

    if (( $(( $(( EPOCHSECONDS / 60 / 60 / 24 )) - $LAST_UPDATE )) < 13 )); then
        return
    fi

    make_shell_settings update

    echo "LAST_UPDATE=$(( EPOCHSECONDS / 60 / 60 / 24 ))" > ~/.settings/cache/last-update
}

function refresh_shell_settings() {
    printf "\033[0;92m==> %s\033[0m" "Refreshing settings..."
    source ~/.zshrc
    printf "Done\n"
}
