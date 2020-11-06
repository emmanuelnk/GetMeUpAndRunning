#!/bin/bash

package_name="genymotion"
script_name="genymotion"

genymotion.ub() {
    read -p "What version of geny-motion do you want to install? e.g. 3.1.1: " geny_ver

    wget https://dl.genymotion.com/releases/genymotion-$geny_ver/genymotion-$geny_ver-linux_x64.bin -P $HOME/Downloads
    chmod +x $HOME/Downloads/genymotion-$geny_ver-linux_x64.bin
    sudo $HOME/Downloads/genymotion-$geny_ver-linux_x64.bin
}