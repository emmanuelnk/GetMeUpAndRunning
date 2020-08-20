#!/bin/bash

chrome.ub() { 
    echo -e "\n\ninstalling google chrome stable...\n"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $HOME/Downloads/
    sudo apt install $HOME/Dowloads/google-chrome-stable_current_amd64.deb --yes 
}