#!/usr/bin/env bash
output=$(playerctl metadata title)
if [ ${#output} -gt 50 ]; then
	echo "$(playerctl metadata title | cut -c 1-51)..."
else
	playerctl metadata title
fi
