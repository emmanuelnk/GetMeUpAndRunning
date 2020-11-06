#!/bin/bash

package_name="make"
script_name="make"

make.ub() {   
    echo -e "\n\ninstalling make...\n"
    sudo apt update && sudo apt install make --yes
}
