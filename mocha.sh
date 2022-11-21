#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then

  clear

	printf %b '\e]P01E1E2E' # set background
	printf %b '\e]P8313244' # set bright black

	printf %b '\e]P7B4BEFE' # set text color
	printf %b '\e]PFB4BEFE' # set bright white

	printf %b '\e]P1EDA0AB' # set red
	printf %b '\e]P9EDA0AB' # set bright

	printf %b '\e]P2A6E3A1' # set green
	printf %b '\e]PAA6E3A1' # set bright green

	printf %b '\e]P3F9E2AF' # set yellow
	printf %b '\e]PBF9E2AF' # set bright yellow

	printf %b '\e]P489B4FA' # set blue
	printf %b '\e]PC89B4FA' # set bright blue

	printf %b '\e]P5CBA6F7' # set magenta to
	printf %b '\e]PDCBA6F7' # set bright magenta

	printf %b '\e]P689DCEB' # set cyan
	printf %b '\e]PE89DCEB' # set bright cyan

	clear
fi
