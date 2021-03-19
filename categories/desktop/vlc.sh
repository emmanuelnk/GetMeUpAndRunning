#!/bin/bash

package_name="vlc"
script_name="vlc"

vlc.ub() {   
    echo -e "\n\ninstalling vlc player...\n"
    sudo apt-get update
    sudo apt-get install vlc --yes
}

vlc.is_installed() {
    check_is_apt_installed $1 $2
}