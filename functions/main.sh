#!/bin/bash

function armake() {
    (cd ~/.settings && make $*)
}

function arupdate() {
    zmodload zsh/datetime
    if ! source ~/.settings/cache/last-update 2>/dev/null || [[ -z "$LAST_UPDATE" ]]; then
        echo "LAST_UPDATE=$(( EPOCHSECONDS / 60 / 60 / 24 ))" > ~/.settings/cache/last-update
        return
    fi

    if (( $(( $(( EPOCHSECONDS / 60 / 60 / 24 )) - $LAST_UPDATE )) < 13 )); then
        return
    fi

    armake update

    echo "LAST_UPDATE=$(( EPOCHSECONDS / 60 / 60 / 24 ))" > ~/.settings/cache/last-update
}
