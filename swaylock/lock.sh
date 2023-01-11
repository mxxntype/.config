#!/bin/sh

common () {
  # change layouts back to english so i don't get locked out
  hyprctl keyword input:kb_layout us,ru

  # query current wallpaper
  WALLPAPER=$(swww query | sed -ne '/^.*image: /{;s///p;q}')

  # start the swaylock daemon
  exec swaylockd --image "$HOME/.config/wallpapers/gradient/$WALLPAPER"
}

if [[ "$1" = "--manual" ]] || [[ "$1" = "" ]]; then
  echo "lock.sh: trigged manually."
  # pause cmus
  cmus-remote -C player-pause-playback
fi

if [[ "$1" = "--from-idle" ]]; then
  echo "lock.sh: triggered by idle."
fi

common
