#!/bin/bash

package_name="cmake"
script_name="cmake"

cmake.ub() {   
    echo -e "\n\ninstalling cmake...\n"
    sudo apt-get update && sudo apt-get install cmake --yes
}

cmake.is_installed() {
    check_is_apt_installed $1 $2
}