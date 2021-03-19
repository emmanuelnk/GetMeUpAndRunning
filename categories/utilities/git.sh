#!/bin/bash

package_name="git"
script_name="git"

git.ub() {   
    echo -e "\n\ninstalling git\n..."
    sudo apt-get update && sudo apt-get install git --yes
}
