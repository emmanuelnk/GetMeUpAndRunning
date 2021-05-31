#!/bin/bash

package_name="guake"
script_name="guake"

guake.ub() {   
    echo -e "\n\ninstalling guake\n..."
    sudo add-apt-repository ppa:linuxuprising/guake --yes
    sudo apt-get update && sudo apt-get install guake --yes
}

guake.is_installed() {
    check_is_apt_installed $1 $2
}

