#!/bin/bash

function armake() {
    (cd ~/.settings && make $*)
}

function arupdate() {
    if ! source "${ZSH_CACHE_DIR}/.zsh-update" 2>/dev/null || [[ -z "$LAST_EPOCH" ]]; then
        printf "\033[0;91m==> %s\n\033[0m" "No last last epcoh date"
        return
    fi

    if (( ( $(( EPOCHSECONDS / 60 / 60 / 24 )) - $LAST_EPOCH ) < $(( UPDATE_ZSH_DAYS - 6 )) )); then
        return
    fi

    printf "\033[0;93m==> %s\n\033[0m" "Checking if plugins need updating..."
    armake update
}
