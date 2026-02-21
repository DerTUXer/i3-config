#!/bin/bash

printf "\e[1;32m
###################################
___           ____  ____      ___
 |  |  | \ /  |__   |__/  __   / 
 |  |__| / \  |___  |  |      /__
__________________________________    
      Ein Fork von Debian-z
####################################
\e[0m\n"

echo "installiere git & vim"
sudo apt install -y git vim

echo "1-Software"
bash ~/dertuxer-z/1-software.sh
echo
echo "2-setup"
bash ~/dertuxer-z/2-setup.sh
echo
echo "3-fonts"
bash ~/dertuxer-z/3-fonts.sh
echo
echo "4-rice"
bash ~/dertuxer-z/4-rice.sh
echo

sudo nala autoremove

printf "\e[1;32m
###################################
___           ____  ____      ___
 |  |  | \ /  |__   |__/  __   / 
 |  |__| / \  |___  |  |      /__
__________________________________    
     Ein Fork von Debian-z
####################################
