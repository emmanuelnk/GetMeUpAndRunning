#!/bin/bash

package_name="atom"
script_name="atom"

atom.ub() {   
    echo -e "\n\ninstalling atom editor...\n"
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    sudo apt-get update && sudo apt-get install atom --yes
}

atom.is_installed() {
    check_is_apt_installed $1 $2
}