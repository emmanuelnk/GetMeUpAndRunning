#!/bin/bash

package_name="mlocate"
script_name="mlocate"

mlocate.ub() {   
    echo -e "\n\ninstalling mlocate...\n"
    sudo apt update && sudo apt install mlocate --yes 
}