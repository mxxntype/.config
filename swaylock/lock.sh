#!/bin/sh

# pause cmus
cmus-remote -C player-pause-playback

# change layouts back to english so i don't get locked out
hyprctl keyword input:kb_layout us,ru

WALLPAPER=$(swww query | sed -ne '/^.*image: /{;s///p;q}')
echo "$WALLPAPER"

# start the swaylock daemon
exec swaylockd --image "$HOME/.config/wallpapers/gradient/$WALLPAPER"
