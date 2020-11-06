#!/bin/bash

package_name="vlc"
script_name="vlc"

vlc.ub() {   
    echo -e "\n\ninstalling vlc player...\n"
    sudo apt update
    sudo apt install vlc --yes
}