#!/usr/bin/env bash
dunstify "Cheese!" "Taking screenshot in 5 sec..." #--raw_icon /usr/share/icons/Papirus-Dark/64x64/apps/camorama.svg
sleep 5
scrot 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES)/Screenshots/ ; viewnior $$(xdg-user-dir PICTURES)/Screenshots/$f'
