#!/bin/bash

# ubuntu
node_n.ub() {
    echo -e "\n\ninstalling tj/n node version manager...\n..."
    curl -L https://git.io/n-install | bash
    . $HOME/.zshrc
}