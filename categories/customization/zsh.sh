#!/bin/bash

package_name="zsh"
script_name="zsh"

zsh.ub(){
    echo "--------------- Installing zsh, ohmyzsh, lsd, powerlevel10k -------------------"
    echo "installing zsh..."
    sudo apt-get install zsh -y

    echo "installing ohmyzsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo "installing zsh recommended font..."
    mkdir -p $HOME/.fonts
    cd $HOME/Downloads
    wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
    wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
    wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
    wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
    mv MesloLGS* $HOME/.fonts/
    cd $HOME
    fc-cache -f -v

    echo "installing powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k $HOME/custom_built
    sed '/ZSH_THEME="*"/c ZSH_THEME="powerlevel10k/powerlevel10k"' $HOME/.zshrc

    echo "installing lsd..."
    curl -s https://api.github.com/repos/peltoche/lsd/releases/latest \
    | grep 'browser_download_url.*lsd_.*_amd64.deb"' \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -i - -O $HOME/Downloads/lsd_latest_amd64.deb
    sudo dpkg -i $HOME/Downloads/lsd_latest_amd64.deb

    echo "installing zsh syntax highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    
    # make zsh the default shell
    sudo chsh -s $(which zsh)
}

zsh.is_installed() {
    check_is_apt_installed $1 $2
}
