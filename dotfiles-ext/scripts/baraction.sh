#!/bin/sh
# Example Bar Action Script for Linux.
# Requires: acpi, iostat.
# Tested on: Debian 10, Fedora 31.
#


vol() {
	vol=`amixer get Master | awk -F'[][]' 'END{ print $2 }' | sed 's/on://g'`
	echo -e " V : $vol"
}



I=0
while :; do

battery="$(cat /sys/class/power_supply/BAT0/capacity)"


	echo "    $(vol)  B :  $battery  "
	I=$(( ( ${I} + 1 ) % 11 ))
	sleep 5
done

