#!/bin/bash

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

dwm_alsa () {
	STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
	VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
	if [[ ! "$STATUS" = "off" && ! "$VOL" = "0" ]]; then
		printf "%s" "$SEP1"
		printf ""
		if [ "$VOL" -le 33 ]; then
			printf "󰕿"
		elif [ "$VOL" -le 66 ]; then
			printf "󰖀"
		else
			printf "󰕾"
		fi
		printf "%2s" "$VOL"
		printf "%s\n" "$SEP2"
	fi
}

dwm_alsa
