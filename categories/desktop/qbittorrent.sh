#!/bin/bash

qbittorrent.ub() {
    echo -e "\n\ninstalling qbittorrent\n..."
    sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable --yes
    sudo apt update && sudo apt install qbittorrent --yes
}