#!/bin/bash

check_is_installed() { 
    PACKAGE_NAME=$1
    DESCRIPTIONS_KEY=$2

    if [[ $(/usr/bin/dpkg-query --show 2>/dev/null --showformat='${db:Status-Status}\n' $PACKAGE_NAME) == 'installed' ]]; then
        [[ -v gmu_descriptions[$DESCRIPTIONS_KEY] ]] && gmu_descriptions[$DESCRIPTIONS_KEY]+="[INSTALLED]"
    fi
}

continue_install() {
    echo -e "\n\n"
    read -p "$1 appears to be installed already. Type [Y/y] to continue anyway: " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        return 1
    else
        return 0
    fi
}
