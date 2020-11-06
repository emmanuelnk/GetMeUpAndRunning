#!/bin/bash

package_name="docker"
script_name="docker"

docker.ub() {   
    echo -e "\n\ninstalling docker.io...\n"
    sudo apt update && sudo apt install docker.io --yes 
    sudo systemctl enable --now docker
    # sudo usermod -aG docker SOMEUSERNAME
}
