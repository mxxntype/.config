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
export PATH="$PATH:/home/astrumaureus/.local/bin:/home/astrumaureus/shell:/home/astrumaureus/go/bin"
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
if [ -d "$HOME/.oh-my-zsh" ]; then
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
fi


# [ ALIASES ] #
if [ -x "$( command -v doas )" ]; then
  alias doas="sudo"
fi

if [ -x "$( command -v exa )" ]; then
  alias l="exa --icons"
  alias ls="l --long"
  alias ll="l --long -a"
  alias tree="ls --tree"
else
  alias ls="ls --color=auto"
  alias l="ls -A"
  alias ll="ls -GgAhF"
  alias lll="ls -lAhF"
fi

if [ -x "$( command -v bat )" ]; then
  alias cat="bat"
fi

if [ -x "$( command -v rmt )" ]; then
  alias rm="rmt"
  alias rd="rm -d"
fi

if [ -x "$( command -v yay )" ]; then
  alias yay="yay --color always"
  alias yay-clean="yay -Rns $(yay -Qdtq); yay -Sc --noconfirm"
fi

alias river="XKB_DEFAULT_LAYOUT=us,ru XKB_DEFAULT_OPTIONS=grp:win_space_toggle XDG_DESKTOP_DIR=~/desktop dbus-run-session river -c 'python3 ~/.config/river/init.py'"
alias Hyprland="dbus-run-session ~/shell/Hyprland.sh"
alias sway="dbus-run-session sway"

alias shutdown="~/shell/shutdown.sh"
alias reboot="~/shell/reboot.sh"

alias aft="android-file-transfer"
alias cal="cal -my"
alias duf="duf -theme ansi"
alias free="free -wh --si"
alias nv="nvim"
alias sz="du -sh ./*"


# [ 3P MODULES ] #
# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# opaque
if [ -x "$(command -v opaque-probe.sh)" ]; then
  opaque-probe.sh
fi

# orbit
if [ -x "$(command -v orbit-probe.sh)" ]; then
  orbit-probe.sh --mode show
fi
