#!/bin/bash

package_name="n"
script_name="node_n"

node_n.ub() {
    echo -e "\n\ninstalling tj/n node version manager...\n..."
    curl -L https://git.io/n-install | bash
    . $HOME/.zshrc
}