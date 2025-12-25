#!/bin/sh

# wallpaper
feh --bg-scale /home/mukesh/Pictures/wallpapers/pokemon.jpg &

# compositor
picom &

# notifications
dunst &

# polkit agent (needed for GUI apps)
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

dwmblocks &
