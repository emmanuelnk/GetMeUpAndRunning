#!/bin/bash

# ubuntu
python_utils.ub(){
    echo -e "\n\n ------- python utils: pip, virtualenv --------\n\n"
    echo -e "\ninstalling pip, virtualenv ...\n"
    sudo apt install python3-pip
    sudo pip3 install virtualenv 
}

# mac
# python_utils.mc() {}

