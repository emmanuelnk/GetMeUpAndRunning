# GetMeUpAndRunning (GMUAR)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)
[![Twitter](https://img.shields.io/twitter/follow/emmanuel_n_k?style=social)](https://twitter.com/emmanuel_n_k)
## A pure Bash software quick install tool for Ubuntu/Debian
![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/19330930/111744577-68516900-88c6-11eb-9c75-641acff9bef3.gif)
## Introduction

GMUAR is a pure bash command-line utility program to install a host of common software on Ubuntu/Debian. 
This helps get software onto fresh Ubuntu installs fast.

## Why?
I got tired of having to manually `sudo apt install` a bunch of software everytime I launched a fresh Ubuntu installation. I wanted the ability to pick and choose what kind of software I would like installed through a terminal menu. That's all

## Software in this version
<details>
  <summary><b>Click to expand</b></summary>
    
    ```bash
    ├── customization
    │   └── zsh.sh
    ├── desktop
    │   ├── atom.sh
    │   ├── chrome.sh
    │   ├── qbittorrent.sh
    │   ├── slack.sh
    │   ├── spotify.sh
    │   ├── sublime.sh
    │   ├── vlc.sh
    │   └── wavebox.sh
    ├── development
    │   ├── anaconda.sh
    │   ├── awscli.sh
    │   ├── dvm.sh
    │   ├── genymotion.sh
    │   ├── go.sh
    │   ├── gvm.sh
    │   ├── heroku.sh
    │   ├── node_n.sh
    │   ├── pgadmin4.sh
    │   ├── postman.sh
    │   ├── rvm.sh
    │   ├── vscode.sh
    │   ├── workbench.sh
    │   └── yarn.sh
    ├── setup
    │   ├── cmake.sh
    │   ├── curl.sh
    │   ├── git.sh
    │   ├── make.sh
    │   └── pip3.sh
    └── utilities
        ├── docker.sh
        ├── fuck.sh
        ├── htop.sh
        ├── mlocate.sh
        ├── nettools.sh
        └── qv2ray.sh
    ```
</details>

## Quick start
Clone this repository
```bash
git clone https://github.com/emmanuelnk/GetMeUpAndRunning.git && cd GetMeUpAndRunning
```

Give `./gmuar.sh` permissions to launch
```bash
chmod +x ./gmuar.sh
```

Run it!
```bash
./gmaur.sh
```

![Screenshot](https://user-images.githubusercontent.com/19330930/111746696-57562700-88c9-11eb-9fcb-1238d1749c3a.png)

## How to use
It's pretty straight-forward. When you run `./gmuar.sh` a menu prompt will open showing you what programs are already installed and what you can install.
Simply follow the instructions.

- ▣ selected -- will be installed
- □ unselected -- will not be installed

If a program is already installed, it will have the tag `[INSTALLED]` beside its name e.g.
![Screenshot](https://user-images.githubusercontent.com/19330930/111747020-c2076280-88c9-11eb-985c-01a409c8d6e8.png)



## How to add apt/snap programs
Simply create a new file under the relevant category. 

For example if I want to add `gimp` to GMUAR. I consider it a category `desktop` software:
```bash
touch categories/desktop/gimp.sh    
```

Open the file and add:
```bash
#!/bin/bash

# name of the package in apt (like in `sudo apt install gimp`)
package_name="gimp"

# name of this file i.e. gimp.sh without the extension
script_name="gimp"

curl.ub() {  
    # print what you are installing
    echo -e "\n\ninstalling Gimp...\n"

    # add the commands that would correctly install Gimp
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
    sudo apt-get update -y
    sudo apt-get install gimp -y
}

curl.is_installed() {
    # add how you would check if Gimp is install
    # if you installed it with apt or the executable is added to PATH (e.g. snap packages)
    # then this is enough

    check_is_apt_installed $1 $2
}
```
- `package_name` and `script_name` MUST be defined
- `package_name` is usually the name the package has in `apt`
- `script_name` is the name of the `.sh` file you just created

## How to manually installed/built Programs
- If you do not install a program using `apt` you can use `check_installed_by_files_exist` to check for certain files or binaries:
    ```bash
    postman.is_installed() {
        # will check for the file "$HOME/src/Postman/Postman" to see that Postman exists
        check_installed_by_files_exist $1 $2 "$HOME/src/Postman/Postman"
    }
    ```
- This function can take multiple args as well wildcards:
    ```bash
    your_program.is_installed() {
        $FILE_1="$HOME/src/your_program/your_program_executable_1"
        $FILE_2="$HOME/src/your_program/your_program*.config"
        $FILE_3="$HOME/src/your_program/your_program*.AppImage"

        check_installed_by_files_exist $1 $2 $FILE_1 $FILE_2 $FILE_3
    }
    ```

## Test GMUAR locally in Ubuntu Docker
- To get a feel of how this Script works, you can clone this repository and run:
```bash
docker build -t gmuar/gmuar .
sudo docker run -it gmuar/gmuar:latest /bin/bash
```

## See it in action online right now in Katacoda
- Open up [katacoda](https://www.katacoda.com/courses/ubuntu/playground)
- Run the following commands
```bash
git clone https://github.com/emmanuelnk/GetMeUpAndRunning && cd GetMeUpAndRunning
./gmuar.sh
```

## Contributions
- If you would like to make a contribution, just fork the repo and make a pull request
- All kinds of contributions, optimizations etc are welcomed



