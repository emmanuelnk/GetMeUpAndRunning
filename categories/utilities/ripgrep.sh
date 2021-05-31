#!/bin/bash

package_name="ripgrep"
script_name="ripgrep"

ripgrep.ub() {   
    echo -e "\n\ninstalling ripgrep\n..."
    sudo apt-get update && sudo apt-get install ripgrep --yes
}

ripgrep.is_installed() {
    check_is_apt_installed $1 $2
}