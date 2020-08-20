#!/bin/bash

# ubuntu
gvm.ub() {
    echo -e "\n\ninstalling latest go version manager...\n..."
    # get dependencies
    sudo apt install bison --yes
    # install
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    . $HOME/.gvm/scripts/gvm

}