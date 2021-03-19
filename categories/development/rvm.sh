#!/bin/bash

package_name="rvm"
script_name="rvm"

rvm.ub() {
    echo -e "\n\ninstalling latest rvm (ruby version manager)...\n..."
    sudo apt-get install software-properties-common -y
    sudo apt-add-repository -y ppa:rael-gc/rvm
    sudo apt-get update && sudo apt-get install rvm -y
    echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
}

rvm.is_installed() {
    check_is_apt_installed $1 $2
}