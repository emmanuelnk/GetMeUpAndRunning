#!/bin/bash

package_name="htop"
script_name="htop"

htop.ub() {   
    echo -e "\n\ninstalling htop\n..."
    sudo apt-get update && sudo apt-get install htop --yes
}

htop.is_installed() {
    check_is_apt_installed $1 $2
}