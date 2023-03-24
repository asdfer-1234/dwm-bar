#!/bin/sh

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_battery () {
	# Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
	CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
	STATUS=$(cat /sys/class/power_supply/BAT1/status)
	
	if [ "$STATUS" != "Full" ]; then
		printf "%s" "$SEP1"

		if (( CHARGE < 20 )); then
			printf ""
		else if (( CHARGE < 40 )); then
			printf ""
		else if (( CHARGE < 60 )); then
			printf ""
		else if (( CHARGE < 80 )); then
			printf ""
		else
			printf ""
		fi fi fi fi 

		if [ "$STATUS" = "Charging" ]; then
			printf ""
		fi
		printf "$CHARGE"
		
		printf "%s\n" "$SEP2"
	fi
}

dwm_battery

