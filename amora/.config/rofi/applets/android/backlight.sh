#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/three.rasi"

# Error msg
msg() {
	rofi -theme "$dir/message.rasi" -e "$1"
}

## Get Brightness
VAR="$(light)"
BLIGHT="$(printf "%.0f\n" "$VAR")"

if [[ $BLIGHT -ge 1 ]] && [[ $BLIGHT -le 29 ]]; then
    MSG="Low"
elif [[ $BLIGHT -ge 30 ]] && [[ $BLIGHT -le 49 ]]; then
    MSG="Optimal"
elif [[ $BLIGHT -ge 50 ]] && [[ $BLIGHT -le 69 ]]; then
    MSG="High"
elif [[ $BLIGHT -ge 70 ]] && [[ $BLIGHT -le 99 ]]; then
    MSG="Too Much"
fi

## Icons
ICON_UP=""
ICON_DOWN=""
ICON_OPT=""

notify="dunstify -u low -t 1500"
options="$ICON_UP\n$ICON_OPT\n$ICON_DOWN"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "$BLIGHT%" -dmenu -selected-row 1)"
case $chosen in
    $ICON_UP)
		/home/steve/.scripts/bness-up.sh
        ;;
    $ICON_DOWN)
		/home/steve/.scripts/bness-down.sh
        ;;
    $ICON_OPT)
		light -S 40
        ;;
esac

