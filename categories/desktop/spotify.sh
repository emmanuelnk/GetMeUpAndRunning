#!/bin/bash

# ubuntu
spotify.ub() {   
    echo -e "\n\ninstalling spotify...\n"
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list 
    sudo apt update && sudo apt install spotify-client --yes
}
