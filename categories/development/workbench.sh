#!/bin/bash

package_name="mysql-workbench-community"
script_name="workbench"

workbench.ub() {
    echo -e "\n\ninstalling latest MySQL Workbench..\n..."
    sudo apt-get install mysql-workbench -y
}

workbench.is_installed() {
    check_is_apt_installed $1 $2
}