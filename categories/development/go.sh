#!/bin/bash

package_name="go"
script_name="go"

go.ub() {
    echo -e "\n\ninstalling golang...\n..."
    sudo apt-get update && sudo apt-get install golang --yes
}