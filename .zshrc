#    ███████╗███████╗██╗  ██╗██████╗  ██████╗
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#      ███╔╝ ███████╗███████║██████╔╝██║     
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

# [ TTY ]
# colorscheme
source ~/.config/mocha.sh


# [ ENVIRONMENTAL VARIABLES ] #
# common
export PATH="$PATH:/home/astrumaureus/.local/bin:/home/astrumaureus/.local/sh:/home/astrumaureus/go/bin"
export EDITOR=nvim
export LS_COLORS="$(echo $LS_COLORS):ex=01;31"

# exa (supercharged ls with icons, trees, etc.)
# UI
EXA_COLORS="ur=35;3;4:uw=35;3;4:ux=31;1;3;4:ue=35;1;3;4:gr=35:gw=35:gx=35;1:tr=35:tw=35:tx=35;1"
EXA_COLORS="$(echo $EXA_COLORS):sn=34;1:sb=34;1:uu=97;1;3:gu=97;1;3:un=35;1;3:gn=35;1;3"
EXA_COLORS="$(echo $EXA_COLORS):da=30;3:xx=97;1"
# file colors
EXA_COLORS="$(echo $EXA_COLORS):*.go=34"

export EXA_COLORS
export EXA_ICON_SPACING=2

# npm
export NPM_CONFIG_PREFIX=~/.npm-global


# [ ZSH ] #
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
ZSH_DISABLE_COMPFIX="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ZSH_THEME="warden"

# plugins
plugins=(aliases git adb dotnet golang colored-man-pages safe-paste)

# load omz
source $ZSH/oh-my-zsh.sh


# [ ALIASES ] #
# alias ls="ls --color=auto"
# alias l="ls -A"
# alias ll="ls -GgAhF"
# alias lll="ls -lAhF"
alias ls="exa --long --icons"
alias l="exa --icons -a"
alias ll="exa -a --long --icons"

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
alias sway="dbus-run-session sway"

alias shutdown="brillo -O; sudo shutdown -h now"
alias poweroff="sudo poweroff"
alias reboot="brillo -O; sudo reboot"

# syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# [ OTHER ]
zstyle ":omz:update" mode reminder
# zstyle ":omz:update" frequency 13

# uncomment if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
