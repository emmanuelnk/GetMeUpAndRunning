#!/bin/bash

# arrays
declare -A gmu_packagenames # apt package names of programs
declare -A gmu_descriptions # descriptions of programs
declare -A gmu_categories   # category of routine

#---------------------------- REQUIRED ----------------------------

#---------------------------- UTILITIES ---------------------------

# make
gmu_packagenames[make]="make" 
gmu_descriptions[make]="Make" 
gmu_categories[make]="utilities" 

# cmake
gmu_packagenames[cmake]="cmake" 
gmu_descriptions[cmake]="CMake" 
gmu_categories[cmake]="utilities" 

# htop
gmu_packagenames[htop]="htop" 
gmu_descriptions[htop]="Htop" 
gmu_categories[htop]="utilities" 

# curl
gmu_packagenames[curl]="curl" 
gmu_descriptions[curl]="cURL" 
gmu_categories[curl]="utilities" 

# git
gmu_packagenames[git]="git" 
gmu_descriptions[git]="GIT" 
gmu_categories[git]="utilities" 

# git
gmu_packagenames[docker]="docker.io" 
gmu_descriptions[docker]="Docker.io" 
gmu_categories[docker]="utilities" 

#---------------------------- DEVELOPMENT -------------------------

#---------------------------- CUSTOMIZATION -----------------------

#---------------------------- DESKTOP -----------------------------

# atom
gmu_packagenames[atom]="atom" 
gmu_descriptions[atom]="Atom Editor" 
gmu_categories[atom]="desktop" 

# google-chrome-stable
gmu_packagenames[chrome]="google-chrome-stable" 
gmu_descriptions[chrome]="Chrome Browser" 
gmu_categories[chrome]="desktop" 

# spotify
gmu_packagenames[spotify]="spotify-client"
gmu_descriptions[spotify]="Spotify"
gmu_categories[spotify]="desktop" 

# sublime-text
gmu_packagenames[sublime]="sublime-text"
gmu_descriptions[sublime]="Sublime Text 3"
gmu_categories[sublime]="desktop" 

# wavebox
gmu_packagenames[wavebox]="wavebox"
gmu_descriptions[wavebox]="Wavebox"
gmu_categories[wavebox]="desktop" 

# qbittorrent
gmu_packagenames[qbittorrent]="qbittorrent" 
gmu_descriptions[qbittorrent]="QBitTorrent" 
gmu_categories[qbittorrent]="desktop" 

# vlc
gmu_packagenames[vlc]="vlc" 
gmu_descriptions[vlc]="VLC Player" 
gmu_categories[vlc]="desktop" 


#----------------------------------------------------------------