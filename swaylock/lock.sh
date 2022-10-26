#!/bin/sh

# change layouts back to english so i don't get locked out
hyprctl keyword device:cooler-master-technology-inc.-gaming-mech-kb:kb_layout us
hyprctl keyword device:at-translated-set-2-keyboard:kb_layout us

# lock the screen
exec swaylock
