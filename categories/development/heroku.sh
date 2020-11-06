#!/bin/bash

package_name="heroku"
script_name="heroku"

heroku.ub() {
    echo -e "\n\ninstalling latest heroku cli...\n..."
    curl https://cli-assets.heroku.com/install.sh | sh
}