#!/bin/bash

# ubuntu
atom.ub() {   
    echo -e "\n\ninstalling atom editor...\n"
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    sudo apt update && sudo apt install atom --yes
}