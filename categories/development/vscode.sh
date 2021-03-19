#!/bin/bash

package_name="code"
script_name="vscode"

vscode.ub() {
    echo -e "\n\ninstalling latest vscode..\n..."
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" --yes
    sudo apt-get update && sudo apt-get install code --yes
}

vscode.is_installed() {
    check_is_apt_installed $1 $2
}