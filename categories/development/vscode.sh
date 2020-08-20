#!/bin/bash

# ubuntu
vscode.ub() {
    echo -e "\n\ninstalling latest vscode..\n..."
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" --yes
    sudo apt update && sudo apt install code --yes
}