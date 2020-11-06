#!/bin/bash

package_name="rvm"
script_name="rvm"

rvm.ub() {
    echo -e "\n\ninstalling rvm (ruby version manager)...\n..."
    sudo apt install software-properties-common -y
    sudo apt-add-repository -y ppa:rael-gc/rvm
    sudo apt update && sudo apt install rvm -y
    echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
}