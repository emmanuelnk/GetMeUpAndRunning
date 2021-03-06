#!/bin/bash

package_name="spotify-client"
script_name="spotify"

spotify.ub() {   
    echo -e "\n\ninstalling spotify...\n"
    curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list 
    # missing keys fix
    # sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys MISSING_KEY_ID
    sudo apt-get update && sudo apt-get install spotify-client --yes
}

spotify.is_installed() {
    check_is_apt_installed $1 $2
}
