#!/usr/bin/env bash
dunstify "Cheese!" "Taking screenshot in 5 sec..." --raw_icon /home/steve/.scripts/scr.svg
sleep 5
scrot 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
