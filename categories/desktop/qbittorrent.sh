#!/bin/bash

package_name="qbittorrent"
script_name="qbittorrent"

qbittorrent.ub() {
    echo -e "\n\ninstalling qbittorrent\n..."
    sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable --yes
    sudo apt-get update && sudo apt-get install qbittorrent --yes
}

qbittorrent.is_installed() {
    check_is_apt_installed $1 $2
}