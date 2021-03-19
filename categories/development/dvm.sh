#!/bin/bash

package_name="dvm"
script_name="dvm"

dvm.ub() {
    echo -e "\n\ninstalling deno version manager...\n..."
    # https://github.com/axetroy/dvm
    curl -fsSL https://raw.githubusercontent.com/axetroy/dvm/master/install.sh | sudo bash
    echo -e "export PATH=\"\$PATH:\$HOME/.deno/bin\"\n" >> ~/.bash_aliases
    . $HOME/.zshrc

    dvm install $(dvm ls-remote | tail -1)
    dvm use $(dvm ls-remote | tail -1)
}

dvm.is_installed() {
    check_is_apt_installed $1 $2
}