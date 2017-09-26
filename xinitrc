#watch -n 1 uptime >> .uptime
#xscreensaver -nosplash &
#volwheel &
#(sleep 2 && tint2) &
#(sleep 10 && ~/.dropbox-dist/dropboxd ) &
#mconky 
#mpdscribble
#trayer
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --transparent true --alpha 0 --tint 0x000000 --height 16 &  
#my_screen_left
pulseaudio --start
(xsetroot -cursor_name left_ptr ) &
#wallpaper &
feh-wallpaper.sh &
#parcellite &
#(sleep 2 && urxvt )&
#wpa_gui -t &
#exec openbox
#wmii
#firefox &
#thunderbird &
#pidgin & 
#exec fluxbox 
#exec /usr/bin/awesome
export XDG_MENU_PREFIX=lxde-
exec dbus-launch xmonad 
#exec awesome
