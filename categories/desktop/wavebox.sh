#!/bin/bash

package_name="wavebox"
script_name="wavebox"

wavebox.ub() {
    echo -e "\n\ndownloading wavebox...\n"
    wget https://download.wavebox.app/latest/stable/linux/deb -O $HOME/Downloads/wavebox_latest_amd64.deb
    echo -e "\ninstalling wavebox...\n"
    sudo apt-get install $HOME/Downloads/wavebox_latest_amd64.deb --yes
}
