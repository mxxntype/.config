#!/bin/sh

cd ~

# wayland stuff
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland

# qt stuff
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME=qt5ct

# nvidia-specific stuff
export LIBVA_DRIVER_NAME=nvidia
export CLUTTER_BACKEND=wayland
export XDG_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1
export WLR_BACKEND=vulkan
export GDK_BACKEND=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

# directories
export GRIM_DEFAULT_DIR=~/media/images/screenshots/
export XDG_DESKTOP_DIR=~/desktop/
export XDG_CONFIG_HOME=~/.config/
export XDG_CACHE_HOME=~/.cache/

# swww
export SWWW_TRANSITION="wipe"
export SWWW_TRANSITION_STEP=255
export SWWW_TRANSITION_DURATION=2
export SWWW_TRANSITION_FPS=74

exec Hyprland
