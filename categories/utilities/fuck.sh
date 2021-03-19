# sudo pip3 install thefuck
#!/bin/bash

package_name="fuck"
script_name="fuck"

fuck.ub() {   
    echo -e "\n\ninstalling fuck...\n"
    sudo pip3 install thefuck
}

fuck.is_installed() {
    check_is_apt_installed $1 $2
}