#!/bin/bash

# ubuntu
mlocate.ub() {   
    echo -e "\n\ninstalling mlocate...\n"
    sudo apt update && sudo apt install mlocate --yes 
}