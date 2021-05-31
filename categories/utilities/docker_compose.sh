#!/bin/bash

package_name="docker-compose"
script_name="docker_compose"

docker_compose.ub() {   
    echo -e "\n\ninstalling docker compose...\n"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
}

docker_compose.is_installed() {
    check_is_apt_installed $1 $2
}
