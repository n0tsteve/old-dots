#!/usr/bin/env bash
pamixer -t
dunstify "Toggle Mute: $(pamixer --get-volume-human)" --replace=26 --raw_icon=/usr/share/icons/Papirus-Dark/symbolic/status/audio-volume-muted-symbolic.svg
