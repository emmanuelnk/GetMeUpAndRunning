#!/bin/bash

package_name="pgadmin4:all"
script_name="pgadmin4"

pgadmin4.ub() {
    echo -e "\n\ninstalling latest PgAdmin4..\n..."
    sudo apt-get install pgadmin4 -y
}

pgadmin4.is_installed() {
    check_is_apt_installed $1 $2
}