#!/bin/bash
wallpaperdir='/run/media/shravan/DATA/Wallpapers'

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

#feh --bg-fill $randompic
wal -i $randompic
#echo $randompic