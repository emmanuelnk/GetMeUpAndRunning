#!/bin/bash

package_name="cmake"
script_name="cmake"

cmake.ub() {   
    echo -e "\n\ninstalling cmake...\n"
    sudo apt update && sudo apt install cmake --yes
}