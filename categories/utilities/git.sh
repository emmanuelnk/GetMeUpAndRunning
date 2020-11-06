#!/bin/bash

package_name="git"
script_name="git"

git.ub() {   
    echo -e "\n\ninstalling git\n..."
    sudo apt update && sudo apt install git --yes
}
