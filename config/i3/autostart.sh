### Autostart-Datei
### Hier können Prozesse hinterlegt werden, welche nach dem Login
### direkt gestartet werden sollen
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

picom -b &
dunst &
killall nm-applet
nm-applet &
#killall blueman-applet
#blueman-applet &

killall volumeicon
volumeicon &
numlockx on &

killall xfce4-power-manager 
xfce4-power-manager &

killall sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &

ibus-daemon -drx &

# Element startenkillall tuxedo-control-center
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/element --file-forwarding im.riot.Riot @@u %U @@ --hidden &

# Tuxedo-CC im Hintergrund starten
# killall tuxedo-control-center --> Befehl überarbeiten
# exec tuxedo-control-center --tray

# Wird für den Terminal Audio Player benötigt
systemctl --user daemon-reload
systemctl --user start mpd
mpd
