#!/bin/bash

package_name="curl"
script_name="curl"

curl.ub() {   
    echo -e "\n\ninstalling curl...\n"
    sudo apt-get update && sudo apt-get install curl --yes 
}