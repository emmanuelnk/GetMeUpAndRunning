#!/bin/bash

package_name="slack"
script_name="slack"

slack.ub() {
    wget -q https://slack.com/downloads/instructions/ubuntu -O - \
    | tr "\t\r\n'" '   "' \
    | grep -i -o '<a[^>]\+href[ ]*=[ \t]*"\(ht\|f\)tps\?:[^"]\+"' \
    | sed -e 's/^.*"\([^"]\+\)".*$/\1/g' \
    | grep 'slack-desktop' \
    | xargs wget -q -O slack-desktop-latest.deb
    echo -e "\ninstalling slack...\n"
    sudo apt install ./slack-desktop-latest.deb --yes
}
