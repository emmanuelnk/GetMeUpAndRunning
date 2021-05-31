#!/bin/bash

package_name="sublime-text"
script_name="sublime"

sublime.ub() {   
    echo -e "\n\ninstalling sublime3...\n"
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
    sudo apt-get install sublime-text --yes
}

sublime.is_installed() {
    check_is_apt_installed $1 $2
}