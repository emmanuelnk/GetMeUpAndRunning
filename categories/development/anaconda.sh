#!/bin/bash

package_name="anaconda"
script_name="anaconda"

anaconda.ub() {
    echo -e "\n\ninstalling latest anaconda..\n..."
    wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p' | xargs wget -O $HOME/Downloads/Anaconda3-latest-Linux-x86_64.sh
    sudo chmod +x $HOME/Downloads/Anaconda3-latest-Linux-x86_64.sh | sudo bash
}