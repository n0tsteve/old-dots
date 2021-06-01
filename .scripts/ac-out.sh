#!/usr/bin/env bash
level=$(cat /sys/class/power_supply/BAT0/capacity)
state=$(acpi | awk 'END {print $(NF-1), $NF}')
canberra-gtk-play -i power-unplug
if [ $level -ge 90 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-90-symbolic.svg
elif [ $level -ge 80 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-80-symbolic.svg
elif [ $level -ge 70 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-70-symbolic.svg
elif [ $level -ge 60 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-60-symbolic.svg
elif [ $level -ge 50 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-50-symbolic.svg
elif [ $level -ge 40 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-40-symbolic.svg
elif [ $level -ge 30 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-30-symbolic.svg
elif [ $level -ge 20 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-20-symbolic.svg
elif [ $level -ge 10 ]; then
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-10-symbolic.svg
else
	dunstify "Charger Unplugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-caution-symbolic.svg
fi
