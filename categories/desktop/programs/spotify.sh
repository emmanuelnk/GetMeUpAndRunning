#!/bin/bash

# ubuntu
spotify.ub() {   
    echo -e "\n\n ------- spotify --------\n\n"
    echo -e "downloading spotify...\n"
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    echo -e "\ninstalling spotify...\n"
    sudo apt update && sudo apt install spotify-client --yes
}

# mac
# spotify.mc() {}