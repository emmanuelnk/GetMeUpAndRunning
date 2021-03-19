#!/bin/bash

package_name="mlocate"
script_name="mlocate"

mlocate.ub() {   
    echo -e "\n\ninstalling mlocate...\n"
    sudo apt-get update && sudo apt-get install mlocate --yes 
}

mlocate.is_installed() {
    check_is_apt_installed $1 $2
}