# apt install net-tools
#!/bin/bash

package_name="net-tools"
script_name="nettools"

nettools.ub() {
    echo -e "\n\ninstalling latest Net Tools..\n..."
    sudo apt-get install net-tools -y
}

nettools.is_installed() {
    check_is_apt_installed $1 $2
}