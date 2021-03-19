#!/bin/bash

package_name="pip3"
script_name="pip3"

pip3.ub(){
    echo -e "\n\n ------- python utils: pip, virtualenv --------\n\n"
    echo -e "\ninstalling pip, virtualenv ...\n"
    sudo apt-get install python3-pip -y
    sudo pip3 install virtualenv 
}

