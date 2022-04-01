#!/bin/sh

# killall polybar

#Top- Working polybar
#polybar PolybarTony -c ~/.config/polybar/config-tony.ini	

#Puruple bottom bar
# polybar white -c ~/.config/polybar/config.ini

#top-Down red poly
#polybar top -c ~/.config/polybar/config-top-down.ini &
#polybar bottom -c ~/.config/polybar/config-top-down.config.ini


# polybar example -c ~/.config/polybar/TransRed/config-pink.ini &
# polybar example -c ~/.config/polybar/TransRed/config-pink-i.ini &
# polybar example -c ~/.config/polybar/TransRed/config-pink-i2.ini


# typeset -i va=$(cat /sys/class/backlight/intel_backlight/brightness);ba=12000;sudo echo $(($va+$ba)) > /sys/class/backlight/intel_backlight/brightness;
#Space
# polybar top -c ~/.config/polybar/config-space.ini 


#!/bin/sh
killall polybar

if [ -z "$(pgrep -x polybar)" ]; then
    BAR="i3"
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        MONITOR=$m polybar --reload $BAR -c ~/.config/polybar/TransRed/config-TransRed.ini &
        # MONITOR=$m polybar --reload main -c /home/shravan/.config/polybar/AdiPoly2/config.blue-grey.ini &
        sleep 1
    done
else
    polybar-msg cmd restart
fi