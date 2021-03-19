#!/bin/bash

package_name="docker"
script_name="docker"

docker.ub() {   
    echo -e "\n\ninstalling docker.io...\n"
    sudo apt-get update && sudo apt-get install docker.io --yes 
    sudo systemctl enable --now docker
    sudo usermod -aG docker $USER
}

docker.is_installed() {
    check_is_apt_installed $1 $2
}
