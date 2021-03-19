#!/bin/bash

package_name="curl"
script_name="curl"

curl.ub() {   
    echo -e "\n\ninstalling curl...\n"
    sudo apt-get update && sudo apt-get install curl --yes 
}

curl.is_installed() {
    check_is_apt_installed $1 $2
}