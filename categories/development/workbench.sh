#!/bin/bash

package_name="mysql-workbench-community"
script_name="workbench"

workbench.ub() {
    VERSION=0.8.17-1
    echo -e "\n\ninstalling latest MySQL Workbench..\n..."
    wget "https://dev.mysql.com/get/mysql-apt-config_${VERSION}_all.deb" -O $HOME/Downloads/mysql-apt-config_all.deb
    sudo apt-get install $HOME/Downloads/mysql-apt-config_all.deb -y
    sudo apt-get update && sudo apt-get install mysql-workbench-community -y
}

workbench.is_installed() {
    check_is_apt_installed $1 $2
}