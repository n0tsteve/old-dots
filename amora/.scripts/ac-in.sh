#!/usr/bin/env bash
sleep 2
level=$(cat /sys/class/power_supply/BAT0/capacity)
state=$(acpi | awk 'END {print $(NF-2), $(NF-1), $NF}')
if [ $level -ge 90 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-90-charging-symbolic.svg
elif [ $level -ge 80 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-80-charging-symbolic.svg
elif [ $level -ge 70 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-70-charging-symbolic.svg
elif [ $level -ge 60 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-60-charging-symbolic.svg
elif [ $level -ge 50 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-50-charging-symbolic.svg
elif [ $level -ge 40 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-40-charging-symbolic.svg
elif [ $level -ge 30 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-30-charging-symbolic.svg
elif [ $level -ge 20 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-20-charging-symbolic.svg
elif [ $level -ge 10 ]; then
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-level-10-charging-symbolic.svg
else
	dunstify "Charger Plugged: $level%" "$state" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-caution-charging-symbolic.svg
fi
