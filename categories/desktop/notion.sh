#!/bin/bash

package_name="notion-desktop"
script_name="notion"

notion.ub() { 
    echo -e "\n\ninstalling notion...\n"
    sudo wget https://notion.davidbailey.codes/notion-linux.list -P /etc/apt/sources.list.d/
    sudo apt-get update && sudo apt-get install notion-desktop -y
}

notion.is_installed() {
    check_is_apt_installed $1 $2
}
