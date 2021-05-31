#!/bin/bash

unset package_name
unset script_name

package_name="qv2ray"
script_name="qv2ray"

qv2ray.ub(){
    echo "fetching latest Qv2ray.AppImage"

    curl -s https://api.github.com/repos/Qv2ray/Qv2ray/releases/latest \
        | grep 'browser_download_url.*AppImage"' \
        | cut -d : -f 2,3 \
        | tr -d \" \
        | wget -i - -O $HOME/Downloads/Qv2ray.AppImage

    mkdir -p $HOME/src/qv2ray && mv $HOME/Downloads/Qv2ray.AppImage $HOME/src/qv2ray/Qv2ray.AppImage
    echo "moved Qv2ray.AppImage to $HOME/src folder"

    chmod +x $HOME/src/qv2ray/Qv2ray.AppImage
    echo "made Qv2ray.AppImage executable"

    echo "fetching latest v2ray-core files..."
    wget https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip -O $HOME/Downloads/vcore.zip

    echo "unzipping v2ray-core files to $HOME/.config/qv2ray/vcore"
    VCORE_FILE=$HOME/Downloads/vcore.zip

    if test -f "$VCORE_FILE"; then
        echo "copying $VCORE_FILE to $HOME/src/qv2ray/vcore"
        mkdir -p $HOME/.config/qv2ray/vcore && unzip $HOME/Downloads/vcore.zip -d $HOME/.config/qv2ray/vcore
    fi
}

qv2ray.is_installed() {
    # you can use wild cards here 
    FILE_1="$HOME/.config/qv2ray/vcore/v2ray"
    FILE_2="$HOME/src/qv2ray/Qv2ray*.AppImage"

    check_installed_by_files_exist $1 $2 $FILE_1 $FILE_2
}