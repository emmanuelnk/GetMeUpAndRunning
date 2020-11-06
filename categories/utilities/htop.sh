#!/bin/bash

package_name="htop"
script_name="htop"

htop.ub() {   
    echo -e "\n\ninstalling htop\n..."
    sudo apt update && sudo apt install htop --yes
}
