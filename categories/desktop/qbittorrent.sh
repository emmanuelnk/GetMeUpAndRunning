#!/bin/bash

package_name="qbittorrent"
script_name="qbittorrent"

qbittorrent.ub() {
    echo -e "\n\ninstalling qbittorrent\n..."
    sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable --yes
    sudo apt update && sudo apt install qbittorrent --yes
}