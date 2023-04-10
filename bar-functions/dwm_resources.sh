#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

df_check_location='/home'

dwm_resources () {
	# get all the infos first to avoid high resources usage
	free_output=$(free | grep Mem)
	df_output=$(df $df_check_location | tail -n 1)
	MEM=$(echo $free_output | awk '{ printf("%.0f", $3/$2 * 100.0) }')
	CPU=$(vmstat | sed -n 3p | awk '{printf("%d", 100 - $14 - $15)}')
	STO=$(df | grep nvme0n1p7 | awk '{printf("%.0f", $5)}')
	printf "%s" "$SEP1"
	printf "	%2s 󰍛%2s %2s" "$MEM" "$CPU" "$STO"
	printf "%s\n" "$SEP2"
}

dwm_resources
