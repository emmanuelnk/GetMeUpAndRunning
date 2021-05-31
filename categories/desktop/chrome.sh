#!/bin/bash

package_name="google-chrome-stable"
script_name="chrome"

chrome.ub() { 
    echo -e "\n\ninstalling google chrome stable...\n"
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get  update && sudo apt install google-chrome-stable --yes 
}

chrome.is_installed() {
    check_is_apt_installed $1 $2
}
