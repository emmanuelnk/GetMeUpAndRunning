#!/bin/bash

# ubuntu
docker.ub() {   
    echo -e "\n\ninstalling docker.io...\n"
    sudo apt update && sudo apt install docker.io --yes 
    sudo systemctl enable --now docker
    # sudo usermod -aG docker SOMEUSERNAME
}
