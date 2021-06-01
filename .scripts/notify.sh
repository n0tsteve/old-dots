#!/usr/bin/env bash
cat /sys/class/leds/asus::kbd_backlight/brightness > ~/.scripts/kbdlight
paplay /usr/share/sounds/freedesktop/stereo/message.oga
echo 0 > /sys/class/leds/asus::kbd_backlight/brightness
sleep 0.5
echo 1 > /sys/class/leds/asus::kbd_backlight/brightness
sleep 0.25
echo 2 > /sys/class/leds/asus::kbd_backlight/brightness
sleep 0.25
echo 3 > /sys/class/leds/asus::kbd_backlight/brightness
sleep 0.25
echo $(cat ~/.scripts/kbdlight) > /sys/class/leds/asus::kbd_backlight/brightness
