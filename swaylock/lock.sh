#!/bin/sh

# change layouts back to english so i don't get locked out
hyprctl keyword input:kb_layout us,ru

# lock the screen
exec swaylock
