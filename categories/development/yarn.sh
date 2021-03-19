#!/bin/bash

package_name="yarn"
script_name="yarn"

yarn.ub() {
    echo -e "\n\ninstalling yarn...\n..."
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update && sudo apt-get install --no-install-recommends yarn --yes
}