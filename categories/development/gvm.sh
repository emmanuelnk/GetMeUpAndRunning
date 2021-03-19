#!/bin/bash

package_name="gvm"
script_name="gvm"

gvm.ub() {
    echo -e "\n\ninstalling latest go version manager...\n..."
    # get dependencies
    sudo apt-get install bison --yes
    # install
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    . $HOME/.gvm/scripts/gvm

}

gvm.is_installed() {
    check_is_apt_installed $1 $2
}