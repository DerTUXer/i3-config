#################################
## Autostart-Datei
#################################
# Hier können Prozesse hinterlegt werden, welche nach dem Login
# direkt gestartet werden sollen

#################################
# Hintergrundprogramm 
# für grafische Passwort-Abfragen
#################################
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

######################
## Polybar einrichten
######################
picom -b &                            # Grafikdarstellung und optische Effekte 
dunst &                               # Benachrichtigungen
killall nm-applet             
nm-applet &                           # Netzwerk-Gui für die Taskleiste
#killall blueman-applet
#blueman-applet &                     # Bluetooth-Verwaltung für die Taskleiste

killall volumeicon
volumeicon &
numlockx on &

killall xfce4-power-manager 
xfce4-power-manager &                  # Energieverwaltung für die Taskleiste

killall sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &     # Weitere Einstellungen für i3

ibus-daemon -drx &
parcellite                             # Zwischenablage für die Taskleiste


#################################################
# Element (Matrix) im Hintergrund starten
#################################################
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/element --file-forwarding im.riot.Riot @@u %U @@ --hidden &

#################################################
# Nur für Tuxedo Computers
# Tuxedo-Control-Center im Hintergrund starten
#################################################
# killall tuxedo-control-center --> Befehl überarbeiten
# exec tuxedo-control-center --tray

#############################################################
# Wird fürs Abspielen von Audio-Dateiem im Terminal benötigt
# mpd in Verbindung mit ncmpcpp
############################################################
# Wird für den Terminal Audio Player benötigt
systemctl --user daemon-reload
systemctl --user start mpd
mpd
