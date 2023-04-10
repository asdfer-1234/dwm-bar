#!/bin/sh

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

dwm_alsa () {
	STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
	VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
	printf "%s" "$SEP1"
	printf ""
	if [ "$STATUS" = "off" ]; then
		printf "󰖁"
	else
		#removed this line becuase it may get confusing
		if [ "$VOL" -le 33 ]; then
			printf "🔈"
		elif [ "$VOL" -le 66 ]; then
			printf "󰖀"
		else
			printf "󰕾"
		fi
		printf "%2s" "$VOL"
	fi

	printf "%s\n" "$SEP2"
}

dwm_alsa
