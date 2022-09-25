#          _                                         _       _ __
#    _____(_)   _____  ______      ______ ___  _    (_)___  (_) /_  ____  __  __
#   / ___/ / | / / _ \/ ___/ | /| / / __ `__ \(_)  / / __ \/ / __/ / __ \/ / / /
#  / /  / /| |/ /  __/ /   | |/ |/ / / / / / /    / / / / / / /__ / /_/ / /_/ /
# /_/  /_/ |___/\___/_/    |__/|__/_/ /_/ /_(_)  /_/_/ /_/_/\__(_) .___/\__, /
#                                                               /_/    /____/
# written in python by me, astrumaureus. idk why i bothered lol
#
# NOTE: if anybody ever reads this - i have no clue if i'm doing
# things the exact right way; expect spaghetti code below.

import os       # for executing shell commands;
import time     # time: for time, that's what it is.



def visual():
    # bg & borders
    os.system(f'riverctl spawn "wbg ~/media/images/wallpapers/catppuccin/artix-black-4k.png"')

    os.system(f'riverctl background-color 0x{bgDimColor}')
    os.system(f'riverctl border-width {borderWidth}')
    os.system(f'riverctl border-color-unfocused 0x{borderColorUnfocused}')
    os.system(f'riverctl border-color-focused 0x{borderColorFocused}')
    os.system(f'riverctl border-color-urgent 0x{borderColorUrgent}')



def deviceInput():
    os.system('riverctl set-repeat 50 250')                                         # kb repeat rates
    os.system('riverctl input 2522:5907:COMPANY__USB_Device accel-profile flat')    # raw-input
    os.system('riverctl input 2522:5907:COMPANY__USB_Device pointer-accel -0.25')   # mouse sens
    os.system('riverctl focus-follows-cursor normal')                               # focus views with mouse too
    # !!! keyboard layouts are defined in ~/.bashrc ; prefix 'river' with this:
    # !!! export XKB_DEFAULT_LAYOUT=us,ru; export XKB_DEFAULT_OPTIONS=grp:win_space_toggle



def keybinds():
    os.system('riverctl map normal Super+Shift E exit')                             # exit river
    os.system('riverctl map normal Super+Shift R spawn "killall waybar; waybar"')   # restart waybar
    os.system('riverctl map normal Super+Shift L spawn "swaylock"')                 # lock screen

    # initialize tags
    for i in range(9):
        key = i + 1; tags = 2**i

        os.system(f'riverctl map normal Super {key} set-focused-tags {tags}')       # focus a tag
        os.system(f'riverctl map normal Super+Shift {key} set-view-tags {tags}')    # tag focused view with <tag>

    # focus all tags | tag focused view with all tags
    allTags = 2**31 - 1
    os.system(f'riverctl map normal Super 0 set-focused-tags {allTags}')
    os.system(f'riverctl map normal Super+Shift 0 set-view-tags {allTags}')

    # close focused view
    os.system('riverctl map normal Super+Shift Q close')

    # shift focus
    os.system('riverctl map normal Super J focus-view next')
    os.system('riverctl map normal Super K focus-view previous')

    # swap focused view with next/previous view
    os.system('riverctl map normal Super+Shift J swap next')
    os.system('riverctl map normal Super+Shift K swap previous')

    # floating & fullscreen
    os.system('riverctl map normal Super V toggle-float')
    os.system('riverctl map normal Super F toggle-fullscreen')

    # move & resize floating views
    os.system('riverctl map-pointer normal Super BTN_LEFT move-view')
    os.system('riverctl map-pointer normal Super BTN_RIGHT resize-view')

    # decrease/increase main ratio of rivertile (default defined lower)
    os.system('riverctl map normal Super H send-layout-cmd rivertile "main-ratio -0.05"')
    os.system('riverctl map normal Super L send-layout-cmd rivertile "main-ratio +0.05"')

    # change layout orientation
    os.system('riverctl map normal Super Up    send-layout-cmd rivertile "main-location top"')
    os.system('riverctl map normal Super Right send-layout-cmd rivertile "main-location right"')
    os.system('riverctl map normal Super Down  send-layout-cmd rivertile "main-location bottom"')
    os.system('riverctl map normal Super Left  send-layout-cmd rivertile "main-location left"')



def idle():
    os.system('riverctl spawn "swayidle -w timeout 600 swaylock"')



def autostart():
    os.system('''riverctl spawn "wlsunset -t 7000 -T 8000 -g 0.775"''')

    os.system('''gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha-Pink' ''')
    os.system('''gsettings set org.gnome.desktop.interface icon-theme 'ePapirus-Dark' ''')
    os.system('''gsettings set org.gnome.desktop.interface cursor-theme '"Sunity Cursors"' ''')
    os.system('''gsettings set org.gnome.desktop.interface font-name 'JetBrainsMono Nerd Font' ''')

    os.system('riverctl spawn "waybar"')        # spawn a bar
    os.system('riverctl spawn "wireplumber"')   # sound server
    os.system('riverctl spawn "pipewire"')
    os.system('riverctl spawn "pipewire-pulse"')
    time.sleep(0.25)                            # tiny delay; apps may not appear in tray without it

    # autostarting normal apps
    os.system('riverctl set-focused-tags 8')
    os.system('riverctl spawn "kotatogram-desktop"')



def apps():
    os.system('riverctl map normal Super Return spawn "alacritty"')             # terminal
    os.system('riverctl map normal Super E spawn "GDK_BACKEND=x11 thunar"')     # file manager
    os.system(f'''riverctl map normal Super D spawn " bemenu-run -H 24 -B 2 --fn 'JetBrains Mono Nerd Font 10' --nb '#{bgDimColor}' --tb '#{bgDimColor}' --fb '#{accentColor}' --scb '#{bgDimColor}' --cb '#{bgDimColor}' --hb '#{accentColor}' --nf '#{fgColor}' --tf '#{fgColor}' --ff '#{bgDimColor}' --hf '#{bgDimColor}' --bdr '#{bgDimColor}' " ''')    # menu
    # yeah, time for a config file for the menu, this is bullshit...

    os.system('riverctl map normal None Print spawn "grim - | wl-copy"')        # screenshot to clipboard
    os.system('riverctl map normal Control Print spawn "grim"')                 # screenshot to file in ~/media/images/grim-screenshots/

    # start workspace-assigned apps
    os.system('''riverctl map normal Control+Shift 2 spawn "riverctl set-focused-tags 2; gimp" ''')
    os.system('''riverctl map normal Control+Shift 3 spawn "riverctl set-focused-tags 4; librewolf" ''')
    os.system('''riverctl map normal Control+Shift 4 spawn "riverctl set-focused-tags 8; kotatogram-desktop" ''')
    os.system('''riverctl map normal Control+Shift 5 spawn "riverctl set-focused-tags 16; libreoffice" ''')
    os.system('''riverctl map normal Control+Shift 8 spawn "riverctl set-focused-tags 128; keepassxc" ''')
    os.system('''riverctl map normal Control+Shift 9 spawn "riverctl set-focused-tags 256; freetube" ''')
    os.system('''riverctl map normal Control+Shift O spawn "riverctl set-focused-tags 256; alacritty -e cmus" ''')



def layout():
    layout = 'rivertile'
    os.system(f'riverctl default-layout {layout}')
    os.system(f'exec {layout} -view-padding 8 -outer-padding 8 -main-ratio 0.5')



def main():
    os.system('brillo -I')      # restore brightness

    # call setup functions
    visual()
    deviceInput()
    keybinds()
    idle()
    autostart()
    apps()

    # declare, enter & exit passthrough mode
    os.system('riverctl declare-mode passthrough')
    os.system('riverctl map normal Super F11 enter-mode passthrough')
    os.system('riverctl map passthrough Super F11 enter-mode normal')

    layout()                    # anything after layout() won't be interpreted!



# you know why
if __name__ == '__main__':
    # colors
    bgDimColor = '1e1e2e'
    bgColor = '313244'
    borderWidth = 6
    borderColorUnfocused = bgColor
    borderColorFocused = 'cba6f7'
    borderColorUrgent = borderColorFocused
    fgColor = 'cdd6f4'
    accentColor = borderColorUrgent

    main()      # start the setup
