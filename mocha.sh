#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then

  clear

	printf %b '\e]P01E1E2E' # set background color to "Base"
	printf %b '\e]P8313244' # set bright black to "Surface2"

	printf %b '\e]P7CDD6F4' # set text color to "Text"
	printf %b '\e]PFCDD6F4' # set bright white to "Subtext0"

	printf %b '\e]P1EDA0AB' # set red to "Red"
	printf %b '\e]P9EDA0AB' # set bright red to "Red"

	printf %b '\e]P2A6E3A1' # set green to "Green"
	printf %b '\e]PAA6E3A1' # set bright green to "Green"

	printf %b '\e]P3F9E2AF' # set yellow to "Yellow"
	printf %b '\e]PBF9E2AF' # set bright yellow to "Yellow"

	printf %b '\e]P489B4FA' # set blue to "Blue"
	printf %b '\e]PC89B4FA' # set bright blue to "Blue"

	printf %b '\e]P5CBA6F7' # set magenta to "Pink"
	printf %b '\e]PDCBA6F7' # set bright magenta to "Pink"

	printf %b '\e]P694E2D5' # set cyan to "Teal"
	printf %b '\e]PE94E2D5' # set bright cyan to "Teal"

	clear
fi
