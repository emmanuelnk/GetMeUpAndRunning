#!/bin/bash

package_name="curl"
script_name="curl"

curl.ub() {   
    echo -e "\n\ninstalling curl...\n"
    sudo apt update && sudo apt install curl --yes 
}