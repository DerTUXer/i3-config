######################################
### komplette .bash.rc für Ubuntu ####
######################################
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#------------------------------------------------------------------------------------
## bash-tuxer-addon
# Version 28 Januar 2026
#
# Farbe		ANSI-Code	Farbe		ANSI-Code
# Schwarz	\033[0;30m	Dunkelgrau	\033[1;30m
# Rot		\033[0;31m	Hellrot		\033[1;31m
# Grün		\033[0;32m	Hellgrün	\033[1;32m
# Braun		\033[0;33m	Gelb		\033[1;33m
# Blau		\033[0;34m	Hellblau	\033[1;34m
# Lila		\033[0;35m	Helllila	\033[1;35m
# Cyan		\033[0;36m	Hellcyan	\033[1;36m
# Hellgrau	\033[0;37m	Weiß		\033[1;37m
# ------------------------------------------------------------------------------------

clear
echo -e "\033[1;34m    bash-tuxer-addon v28 \e[0m "
echo " -------------------------"
echo -n "Homepage:  " && echo -e "\033[1;35m https://mtb-tour-map.jimdosite.com/ \e[0m "
echo -n "You Tube:  " && echo -e "\033[1;35m https://www.youtube.com/@dertuxer4034 \e[0m "
echo Die nette BASH, vom Der TUXer optimiert.
echo

# TUXer`s Datum (klein)
# echo -n "Datum:    " && date +%F
echo -n "KW        " && date +%U
echo -n "Uhrzeit:  " && date +%R
echo
ncal

# TUXer`s Hotkeys
echo -e "\033[1;34m  ----------------------ALIAS------------------------\e[0m "
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  rechner .......... \e[0m "	&& echo "Systeminformationen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  up ............... \e[0m "	&& echo "komplettes Update !"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  c64 .............. \e[0m "	&& echo "Basic V2.0"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  sauber ........... \e[0m "	&& echo "Paket aufräumen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  neu .............. \e[0m "	&& echo "leere Datei anlegen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  bashup ........... \e[0m "	&& echo "Bash einmalig erweitern"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  qiv .............. \e[0m "	&& echo "Bildbetrachter"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  ranger lfm mc .... \e[0m "	&& echo "Dateimanager im Terminal"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  bashinfo ......... \e[0m "	&& echo "Bash Befehle"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  inxi-info ........ \e[0m "	&& echo "Liste der inxi Parameter"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  soft2 ............ \e[0m "	&& echo "Zusätzliche Software"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  paket ............ \e[0m "	&& echo "Installierte Pakete anzeigen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  source ........... \e[0m "	&& echo "Source-Liste anzeigen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  musik ............ \e[0m "	&& echo "Musik im Terminal abspielen"
echo -en "\033[1;34m  |\e[0m " && 	echo -en "\033[1;33m  pi-update......... \e[0m "	&& echo "Raspi 5 Updaten"
echo -e "\033[1;34m  ---------------------------------------------------\e[0m "
echo

# TUXer`s Alias

alias rechner='clear &&
	neowofetch &&
	lsb_release -c && 
	echo -n "Kernel:         " && uname -r &&
	echo -n "Lokale IP:      " && hostname -I | egrep -o "^.{0,15}" && echo &&
	echo -en "\033[1;38m_______________________________RAM & SWAP_______________________________________ \e[0m "
	echo && free -h'								

alias c64='clear && echo && 
	echo -e "\033[1;34m  ++++ Commodore 64 Basic V2 ++++\e[0m"  && echo && 
	echo -e " \e[1m\e[34m64K RAM SYSTEM 38911 BASIC BYTES FREE\e[0m " && 
	echo && echo -e " \e[1m\e[34mready.\e[0m "'

alias up='clear && 
	echo -n "Geben Sie Ihr Passwort ein, um " && 
	echo -en "\033[1;34mUpdate und Upgrade\e[0m "&& 
	echo "durchführen zu können." &&
	 
	sudo apt update && sudo apt upgrade &&
	echo -e "\e[1m\e[33mAPT Aktualisierung ist FERTIG\e[0m" &&  echo && 
	
	sudo flatpak update && 
	echo -e "\e[1m\e[33mFlatpak Aktualisierung ist FERTIG\e[0m" && echo && 
	
	sudo snap refresh && 
	echo -e "\e[1m\e[33mSNAP Aktualisierung ist FERTIG\e[0m"'

alias neu='touch neue_Textdatei.txt'

alias bashup='clear && echo Folgende Helferlein werden nun installiert && 
	echo -e "\033[1;34m...banner" && 
	echo ...qiv und nala && 
	echo ...ranger && 
	echo ...inxi && 
	echo ...lfm && 
	echo ...mc && 
	echo ...locate && 
	echo ...flatpak und flathub && 
	echo ...htop && 
	echo ...java && 
	echo ...neowofetch &&
	echo ...ssh &&
	echo ...mpd, mpc, ncmpcpp &&
	echo ...libcanberra-gtk3-module && 
	echo -e " \e[1m\e[34m \e[0m " && 
	sudo apt install -y flatpak htop default-jre neowofetch inxi libcanberra-gtk3-module ssh &&
	sudo apt install -y sysvbanner qiv ranger lfm mc locate ncal &&
	sudo apt install -y mpd mpc ncmpcpp nala &&
	sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo'
	
alias sauber='echo "Die Reingung beginnt" &&
	sudo apt autoremove && 
	sudo apt autoclean && 
	sudo apt install --fix-broken'
	

alias bashinfo='clear &&
	echo "Wichtige Bash-Befehle" &&
	echo "---------------------" &&
	echo "/usr/bin/xeyes & disown ......................Prozess starten & von Bash lösen" &&
	echo "nohup /usr/bin/xeyes > xeyes.log 2>&1 & ......Prozess starten & von Bash lösen" &&
	echo "Programmname & bg ............................Bash nach Programmstart verfügbar" &&
	echo "(Programmname & fg) ..........................Bash nach Programmstart nicht verfügbar" &&
	echo "inxi -Fz .....................................System Informationen" &&
	echo "chmod 777 test.txt ...........................Volle Rechte für alle" &&
	echo "df -h ........................................Festplatten Status in GB" &&
	echo "ps ...........................................Laufende Prizesse ermitteln (PID ermitteln)" &&
	echo "kill -9 PID ..................................Prozess beenden (über PID Nr.)" &&
	echo "hostname -I ..................................ip Adresse anzeigen" &&
	echo "ssh://tuxer@192.168.178.35 ...................ssh Verbindung im Dateibrowser" &&
	echo "ssh tuxer@192.168.178.54 .....................ssh Verbindung im terminal" &&
	echo "java -jar trackguru.jar ......................Java Programm starten" &&		
	echo "shutdown -h 20:30 ............................Um 20:30Uhr herunterfahren" &&
	echo "sudo systemctl status ssh ....................Status ssh-Verbindung checken " &&
	echo "pavucontrol ..................................Sound Probleme beheben " &&
	echo "sudo swapon /dev/sda999 ......................Swap Partion einschalten " &&
	echo "find -name *DATEI* ...........................Eine DATEI suchen " &&
	echo "pactl info ...................................Sound Server anzeigen " &&
	echo "Whereis ......................................Pfade einer App anzeigen " &&
	echo "alacritty migrate ............................Fehlermeldung von alacritty beheben " &&

echo ' 

alias inxi-info='clear &&
	echo "Wichtige inxi Parameter" &&
	echo "-----------------------" &&
	echo "inxi -A			Audio:" &&
	echo "inxi -B			Batterie:" &&
	echo "inxi -C			CPU:" &&
	echo "inxi -D			Festplatten:" &&
	echo "inxi -E			Bluethooth:" &&
	echo "inxi -F			Komplette Ausgabe" &&
	echo "inxi -G			Grafik:" &&
	echo "inxi -I			Info & Memory:" &&
	echo "inxi -J			Swap:" &&
	echo "inxi -L			Logical:" &&
	echo "inxi -M			Maschine:" &&
	echo "inxi -N			Netzwerk:" &&
	echo "inxi -P			Partitionen:" &&
	echo "inxi -R			Raid-System:" &&
	echo "inxi -S			System:" &&

echo ' 

alias soft2='clear &&
	echo "es werden folgende Softwarepakete zusätzlich installiert:"
	echo -e "\033[1;34m...kdenlive" && 
	echo ...qmapshack, gpsprune, viking  && 
	echo ...remmina guvcview && 
	echo ...obs-studio && 
	echo ...audacious, audacity && 
	echo ...nextcloud-desktop && 
	echo ...obs-studio && 
	echo ...audacious && 
	echo ...audacity && 
	echo ...gimp, mtpaint && 
	echo ...pdfarranger, xournal &&
	echo ...jstest, steam, wine, winetricks &&
	echo ...virtualbox && 
	echo ...pavucontrol && 
	echo ...alacritty && 
	echo -e " \e[1m\e[34m \e[0m " && 
	sudo apt install -y kdenlive qmapshack viking obs-studio audacious audacity &&
	sudo apt install -y gpsprune guvcview &&
	sudo apt install -y remmina nextcloud-desktop &&
	sudo apt install -y gimp mtpaint pdfarranger xournal &&
	sudo apt install -y jstest-gtk steam-installer wine winetricks &&
	sudo apt install -y virtualbox virtualbox-guest-additions-iso &&
	sudo apt install -y pavucontrol alacritty &&
	echo -e "\e[1m\e[33mAPT zusätzliche Software-Installation ist FERTIG\e[0m" &&
	echo'

alias paket='dpkg --list' 
alias source='more /etc/apt/sources.list.d/ubuntu.sources'    # alias source='nano /etc/apt/sources.list'
alias part='lsblk -e 7'                                       # lsblk -S   Geräte-Namen von sda, sdb, sdc...
export EDITOR=nano

alias musik='systemctl --user start mpd && ncmpcpp'
alias pi-update='sudo sh $HOME/Dokumente/Ablage/raspi-update-host.sh'

# REM coming soon:
# REM Puffer für PipeWire erhöhen, um Aussetzer bei der Audio-Aufnahme zu vermeiden
# REM pw-metadata -n setting 0 clock.force-quantum 1024
# REM Testen Puffer Pipewire
# REM echo "0" | sudo tee /sys/module/snd_hda_intel/parameters/power_save
# REM dauerhaft
# REM echo "option snd_hda_intel power_save=0 | sudo tee /etc/modprobe.d/audio_disable_powersave.conf
# REM pw-top
