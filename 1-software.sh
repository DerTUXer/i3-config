#!/bin/bash

# Installing nala
sudo apt install nala -y
sudo nala update

# X Window & System
sudo nala install -y xorg xbacklight xinput xorg-dev xdotool brightnessctl
sudo nala install -y x11-xserver-utils
sudo nala install -y python3-pip
sudo nala install -y npm zig
sudo nala install -y default-jdk

# CPU Microcode Updates (if you have amd cpu uncomment the first one and comment the second one)
#sudo nala install -y amd64-microcode
sudo nala install -y intel-microcode

# Systemtools
sudo nala install -y network-manager-gnome
sudo nala install -y lxappearance qt5ct arandr xclip
sudo nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
sudo nala install -y alacritty

# Modern replacement for ls
# sudo nala install -y exa
sudo nala install -y eza

sudo nala install -y ranger nemo

# XFCE Settings
sudo nala install -y xfce4-settings xfce4-power-manager

# Audio Control
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# System Information and Monitoring
sudo nala install -y htop btop

sudo nala install -y neowofetch

# Screenshots
sudo nala install -y flameshot

# Printer Support
sudo nala install -y cups simple-scan
sudo systemctl enable cups

# Bluetooth Support
sudo nala install -y bluez blueman
sudo systemctl enable bluetooth

# Menu and Window Managers
sudo nala install -y sxhkd numlockx rofi dunst libnotify-bin picom dmenu polybar dbus-x11

# Archive Management
sudo nala install -y unzip file-roller

# Text Editors
sudo nala install -y vim 
sudo nala install -y mousepad
sudo nala install -y pluma pluma-plugins pluma-plugins-common pluma-plugin-smartspaces pluma-plugin-sourcecodebrowser pluma-plugin-synctex pluma-plugin-terminal pluma-plugin-wordcompletion

# Image Viewer
sudo nala install -y viewnior feh sxiv ueberzug python3-pillow
#pip install pillow (for debian 11)

# Media Player
sudo nala install -y mpv mpc ncmpcpp mpd vlc audacious audacity
sudo nala install -y guvcview

# Document Viewer
sudo nala install -y zathura qiv

# Disk Utilities and Cleaning Tools
sudo nala install -y gnome-disk-utility bleachbit

# Neovim Build prerequisites
sudo nala install -y ninja-build gettext cmake curl python3-venv

# Required packages for i3-gaps installation
sudo nala install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev 
sudo nala install -y libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev 
sudo nala install -y libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 
sudo nala install -y i3-wm libxcb-shape0-dev i3status i3lock cmake i3lock-fancy

# Brave-Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo nala update
sudo nala install -y brave-browser

# Install Codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo nala update
sudo nala install -y codium

# TUXer's Software-Erweiterungen
sudo nala install -y kdenlive qmapshack viking obs-studio 
sudo nala install -y remmina nextcloud-desktop
sudo nala install -y gimp mtpaint pdfarranger xournal
sudo nala install -y jstest-gtk steam-installer wine winetricks
sudo nala install -y virtualbox virtualbox-guest-additions-iso
sudo nala install -y pavucontrol 
sudo nala install -y flatpak inxi libcanberra-gtk3-module ssh  
sudo nala install -y sysvbanneqiv lfm mc locate ncalsudo-rs flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

alacritty migrate
