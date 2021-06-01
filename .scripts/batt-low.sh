#!/usr/bin/env bash
level=$(cat /sys/class/power_supply/BAT0/capacity)
dunstify "Battery Low: $level%" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/battery-low-symbolic.svg
