#!/bin/bash

package_name="make"
script_name="make"

make.ub() {   
    echo -e "\n\ninstalling make...\n"
    sudo apt-get update && sudo apt-get install make --yes
}
