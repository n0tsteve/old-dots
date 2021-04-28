#!/usr/bin/env bash
light -U 5
level=$(light -G)
dunstify "Brightness Down: $level" --raw_icon=/usr/share/icons/Papirus-Dark/16x16/actions/brightnesssettings.svg --replace=24
