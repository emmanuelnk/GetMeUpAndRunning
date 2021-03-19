#!/bin/bash

package_name="postman"
script_name="postman"

postman.ub() {
    echo -e "\n\ninstalling latest Postman..\n..."
    wget https://dl.pstmn.io/download/latest/linux64 -O $HOME/Downloads/Postman.tar.gz
    tar -zxvf $HOME/Downloads/Postman.tar.gz -C $HOME/src
    sudo chmod +x $HOME/src/Postman/Postman
}

postman.is_installed() {
    check_installed_by_files_exist $1 $2 "$HOME/src/Postman/Postman"
}