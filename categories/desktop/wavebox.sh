#!/bin/bash


# ubuntu
wavebox.ub() {
    echo -e "\n\ndownloading wavebox...\n"
    wget https://download.wavebox.app/latest/stable/linux/deb -O $HOME/Downloads/wavebox_latest_amd64.deb
    echo -e "\ninstalling wavebox...\n"
    sudo apt install $HOME/Downloads/wavebox_latest_amd64.deb --yes
}