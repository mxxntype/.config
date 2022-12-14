#!/bin/zsh
#
#    ███████╗███████╗██╗  ██╗██████╗  ██████╗
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#      ███╔╝ ███████╗███████║██████╔╝██║     
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝


# [ TTY ]
# colorscheme (also affects syntax highlighting)
source ~/.config/mocha.sh


# [ ENVIRONMENTAL VARIABLES ] #
# common
export PATH="$PATH:/home/astrumaureus/.local/bin:/home/astrumaureus/.local/sh:/home/astrumaureus/go/bin"
export EDITOR=nvim
export LS_COLORS="$(echo $LS_COLORS):ex=01;31"

# exa (supercharged ls with icons, trees, etc.)
# UI
EXA_COLORS="ur=35;3:uw=35;3:ux=31;1;3:ue=35;1;3:gr=35:gw=35:gx=35;1:tr=35:tw=35:tx=35;1"
EXA_COLORS="$(echo $EXA_COLORS):sn=34;1:sb=34;1:uu=97;1;3:gu=97;1;3:un=35;1;3:gn=35;1;3"
EXA_COLORS="$(echo $EXA_COLORS):da=30;3:xx=97;1"
# git
EXA_COLORS="$(echo $EXA_COLORS):ga=32;1:gd=31;1:gm=31;1:gv:33;1"
# file colors
EXA_COLORS="$(echo $EXA_COLORS):*.go=34"

export EXA_COLORS
export EXA_ICON_SPACING=2

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#181825,bg:#181825,spinner:#f2cdcd,hl:#f5c2e7 \
--color=fg:#45475a,header:#f5c2e7,info:#cba6f7,pointer:#f2cdcd \
--color=marker:#f2cdcd,fg+:#45475a,prompt:#cba6f7,hl+:#f5c2e7"

# npm
export NPM_CONFIG_PREFIX=~/.npm-global


# [ ZSH ] #
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
ZSH_DISABLE_COMPFIX="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ZSH_THEME="warden"

# omz plugins & loading
plugins=(
  adb
  aliases
  charm
  colored-man-pages
  docker
  dotnet
  git
  golang
  safe-paste
)
source $ZSH/oh-my-zsh.sh
zstyle ":omz:update" mode reminder


# [ ALIASES ] #
alias l="exa --icons"
alias ls="l --long"
alias ll="l --long -a"
# alias ls="ls --color=auto"
# alias l="ls -A"
# alias ll="ls -GgAhF"
# alias lll="ls -lAhF"

alias nv="nvim"
alias duf="duf -theme ansi"
alias sz="du -sh *"
alias free="free -wh --si"
alias tree="tree --gitignore"
alias cal="cal -my"
alias cat="bat"
alias aft="android-file-transfer"

alias yay="yay --color always"
alias yay-clean="yay -Rns $(yay -Qdtq); yay -Sc --noconfirm"

alias river="XKB_DEFAULT_LAYOUT=us,ru XKB_DEFAULT_OPTIONS=grp:win_space_toggle GRIM_DEFAULT_DIR=~/media/images/screenshots XDG_DESKTOP_DIR=~/desktop dbus-run-session river -c 'python3 ~/.config/river/init.py'"
alias Hyprland="dbus-run-session Hyprland"
alias sway="dbus-run-session sway"

alias shutdown="~/.local/sh/shutdown"
alias reboot="~/.local/sh/reboot"

alias doas="sudo"


# [ 3P MODULES ] #
# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# opaque
if [ -x "$(command -v opaque-probe)" ]; then
  opaque-probe
fi

# orbit
if [ -x "$(command -v orbit-probe)" ]; then
  orbit-probe --mode show
fi
