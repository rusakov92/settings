#!/bin/bash

function rgdocker() {
	if [[ "$1" == "s" ]]; then
		(cd ~/aws/rg-dockerization-template/scripts && ./rg-docker start --project $2)
	elif [[ "$1" == "st" ]]; then
		(cd ~/aws/rg-dockerization-template/scripts && ./rg-docker stop --project $2)
	else
		(cd ~/aws/rg-dockerization-template/scripts && ./rg-docker $*)
	fi
}

function rgxdebug() {
    (cd ~/aws/rg-dockerization-template/scripts && ./rg-xdebug $*)
}

function rgreset() {
	if [[ "$1" == "-f" ]]; then
		(cd ~/aws/rg-dockerization-template/scripts && ./rg-reset --prepare-phpconf-local --composer-install && ./rg-reset --db-drop-tenants && ./rg-reset --db-rg --db-sftp --db-create-tenants --compile-locales --prepare-hooks --prepare-phpconfs --mappings-locales-compile --prepare-supervisor --flush-memcached-all)
	elif [[ "$1" == "-n" ]]; then
		(cd /Volumes/RG-DOCK/rg_core && yarn install && yarn build-development)
	else
		(cd ~/aws/rg-dockerization-template/scripts && ./rg-reset $*)
	fi
}
