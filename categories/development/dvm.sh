#!/bin/bash

# ubuntu
dvm.ub() {
    echo -e "\n\ninstalling deno version manager...\n..."
    # https://github.com/axetroy/dvm
    curl -fsSL https://raw.githubusercontent.com/axetroy/dvm/master/install.sh | sudo bash
    echo -e "export PATH=\"\$PATH:\$HOME/.deno/bin\"\n" >> ~/.bash_aliases
    . $HOME/.zshrc

    dvm install $(dvm ls-remote | tail -1)
    dvm use $(dvm ls-remote | tail -1)
}