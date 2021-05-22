#!/usr/bin/env bash
light -A 5
level=$(light -G)
dunstify "Brightness Up: $level" --raw_icon=/usr/share/icons/Papirus-Dark/16x16/actions/brightnesssettings.svg --replace=24
