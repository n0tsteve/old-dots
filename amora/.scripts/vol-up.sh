#!/usr/bin/env bash
pamixer -i 5
level=$(pamixer --get-volume)
if [ $level -ge 70 ]; then
	dunstify "Volume Down: $level%" --replace=25 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-high-symbolic.svg
elif [ $level -ge 40 ]; then
	dunstify "Volume Down: $level%" --replace=25 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-medium-symbolic.svg
else
	dunstify "Volume Down: $level%" --replace=25 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-low-symbolic.svg
fi
