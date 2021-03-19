#!/bin/bash

package_name="google-chrome-stable"
script_name="chrome"

chrome.ub() { 
    echo -e "\n\ninstalling google chrome stable...\n"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $HOME/Downloads/
    sudo apt-get install $HOME/Dowloads/google-chrome-stable_current_amd64.deb --yes 
}

chrome.is_installed() {
    check_is_apt_installed $1 $2
}