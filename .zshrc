#    ███████╗███████╗██╗  ██╗██████╗  ██████╗
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#      ███╔╝ ███████╗███████║██████╔╝██║     
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

# TTY colorscheme
source ~/.config/mocha.sh

# envvars
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/astrumaureus/.local/bin:/home/astrumaureus/.local/sh"
export LS_COLORS="di=1;35:ln=32:so=36:pi=34:ex=1;31:bd=30;46:cd=30;44:su=30;41:sg=30;43:tw=30;42:ow=30;43"
export EDITOR=nvim
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export NPM_CONFIG_PREFIX=~/.npm-global

# switches
ZSH_DISABLE_COMPFIX="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ZSH_THEME="warden"

# plugins + vi mode
plugins=(aliases git adb dotnet colored-man-pages safe-paste)
bindkey -v

# load omz
source $ZSH/oh-my-zsh.sh

# aliases
alias ls="ls --color=auto"
alias l="ls -A"
alias ll="ls -GgAhF"
alias lll="ls -lAhF"

alias nv="nvim"
alias duf="duf -theme ansi"
alias sz="du -sh *"
alias free="free -wh --si"
alias tree="tree --gitignore"
alias cal="cal -my"
alias cat="bat"

alias yay="yay --color always"
alias yay-clean="yay -Rns $(yay -Qdtq); yay -Sc --noconfirm"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias river="XKB_DEFAULT_LAYOUT=us,ru XKB_DEFAULT_OPTIONS=grp:win_space_toggle GRIM_DEFAULT_DIR=~/media/images/screenshots XDG_DESKTOP_DIR=~/desktop dbus-run-session river -c 'python3 ~/.config/river/init.py'"
alias Hyprland="dbus-run-session Hyprland"

alias hdd-open="sudo cryptsetup luksOpen /dev/disk/by-uuid/68ad716c-31f7-4d05-98dc-3430dda7e7f0 crypthdd --key-file /boot/volume.key && sudo vgchange -ay hdd && sudo mount /dev/hdd/data-0 /mnt/storage0"
alias hdd-close="sudo umount /dev/hdd/data-0; sudo vgchange -an hdd; sudo cryptsetup close /dev/mapper/crypthdd"

alias shutdown="brillo -O; sudo shutdown -h now"
alias poweroff="sudo poweroff"
alias reboot="brillo -O; sudo reboot"

# syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



zstyle ":omz:update" mode reminder
# zstyle ":omz:update" frequency 13

# uncomment if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
