#!/bin/bash

check_is_apt_installed() { 
    PACKAGE_NAME=$1
    DESCRIPTIONS_KEY=$2

    # checks dpkg for program
    if [[ $(/usr/bin/dpkg-query --show 2>/dev/null --showformat='${db:Status-Status}\n' $PACKAGE_NAME) == 'installed' ]]; then
        [[ -v gmu_descriptions[$DESCRIPTIONS_KEY] ]] && gmu_descriptions[$DESCRIPTIONS_KEY]+="[INSTALLED]"
    else
        # checks PATH for program
        if hash $PACKAGE_NAME 2>/dev/null; then
            [[ -v gmu_descriptions[$DESCRIPTIONS_KEY] ]] && gmu_descriptions[$DESCRIPTIONS_KEY]+="[INSTALLED]"
        fi
    fi
}

check_installed_by_files_exist() { 
    PACKAGE_NAME=$1
    DESCRIPTIONS_KEY=$2

    # checks files exists
    if does_file_exist "${@:3}"; then
        [[ -v gmu_descriptions[$DESCRIPTIONS_KEY] ]] && gmu_descriptions[$DESCRIPTIONS_KEY]+="[INSTALLED]"
    fi
}


does_file_exist() {
    for var in "$@"
    do
        if compgen -G $var > /dev/null; then
            continue
        else
            return 1
        fi
    done

    return 0
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
