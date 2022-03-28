#!/bin/bash

alias blessme="blessstage && blessprod"
alias blessstage="~/.blessclient/blessclient run -c ~/.blessclient/config.yml"
alias blessprod="~/.blessclient/blessclient run -c ~/.blessclient/config_production.yml"
