#!/bin/sh

if [ "$TERM" = "linux" ]; then

  # clear

	printf %b '\e]P0000000' # set background
	printf %b '\e]P8313244' # set bright black

	printf %b '\e]P7CDD6F4' # set text color
	printf %b '\e]PFCDD6F4' # set bright white

	printf %b '\e]P1EDA0AB' # set red
	printf %b '\e]P9EDA0AB' # set bright

	printf %b '\e]P2a6e3a1' # set green
	printf %b '\e]PAa6e3a1' # set bright green

	printf %b '\e]P3F2CDCD' # set yellow
	printf %b '\e]PBF2CDCD' # set bright yellow

	printf %b '\e]P4a6e3a1' # set blue
	printf %b '\e]PCa6e3a1' # set bright blue

	printf %b '\e]P5CBA6F7' # set magenta
	printf %b '\e]PDCBA6F7' # set bright magenta

	printf %b '\e]P689DCEB' # set cyan
	printf %b '\e]PE89DCEB' # set bright cyan

	# clear
fi

# Catppuccin Mocha Theme (for zsh-syntax-highlighting)
#
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#585b70'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#94e2d5,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#cba7f8,bold,underline'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#f5c2e7,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#f5c2e7,italic'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#f5c2e7,italic'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#cba6f7'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#a6e3a1,bold'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#f38ba8'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#f2cdcd'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#f2cdcd'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#f2cdcd'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#eda0ab'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#f2cdcd'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#eda0ab'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#f2cdcd'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#eda0ab'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#cdd6f4'

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#eda0ab'
# ZSH_HIGHLIGHT_STYLES[path]='fg=#cba6f7,bold,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#f38ba8,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#f38ba8,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#f38ba8,bold'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#cba6f7'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#eda0ab'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[default]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#cdd6f4'
