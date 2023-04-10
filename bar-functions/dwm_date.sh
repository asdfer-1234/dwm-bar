#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
	printf "%s" "$SEP1"
	printf ""
	HOUR=$(date +%H | sed -r 's/0*([0-9]*)/\1/')
	if (( HOUR <= 0 )); then
		printf "󱑊"
	else if (( HOUR <= 1 )); then
		printf "󱐿"
	else if (( HOUR <= 2 )); then
		printf "󱑀"
	else if (( HOUR <= 3 )); then
		printf "󱑁"
	else if (( HOUR <= 4 )); then
		printf "󱑂"
	else if (( HOUR <= 5 )); then
		printf "󱑃"
	else if (( HOUR <= 6 )); then
		printf "󱑄"
	else if (( HOUR <= 7 )); then
		printf "󱑅"
	else if (( HOUR <= 8 )); then
		printf "󱑆"
	else if (( HOUR <= 9 )); then
		printf "󱑇"
	else if (( HOUR <= 10 )); then
		printf "󱑈"
	else if (( HOUR <= 11 )); then
		printf "󱑉"
	else if (( HOUR <= 12 )); then
		printf "󱑖"
	else if (( HOUR <= 13 )); then
		printf "󱑋"
	else if (( HOUR <= 14 )); then
		printf "󱑌"
	else if (( HOUR <= 15 )); then
		printf "󱑍"
	else if (( HOUR <= 16 )); then
		printf "󱑎"
	else if (( HOUR <= 17 )); then
		printf "󱑏"
	else if (( HOUR <= 18 )); then
		printf "󱑐"
	else if (( HOUR <= 19 )); then
		printf "󱑑"
	else if (( HOUR <= 20 )); then
		printf "󱑒"
	else if (( HOUR <= 21 )); then
		printf "󱑓"
	else if (( HOUR <= 22 )); then
		printf "󱑔"
	else if (( HOUR <= 23 )); then
		printf "󱑕"
	fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi fi

	printf "%s" "$(date "+%d %a %T")"
	printf "%s\n" "$SEP2"
}

dwm_date

