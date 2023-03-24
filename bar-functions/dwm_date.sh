#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "󱑍"
    else
        printf "DAT "
    fi
    printf "%s" "$(date "+%d %A %T")"
    printf "%s\n" "$SEP2"
}

dwm_date
