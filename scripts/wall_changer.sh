#!/bin/bash
wallpaperdir='/home/shravan/notes/Modding/wallpapers/walls'

files=($wallpaperdir/*)
randompic=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

feh --bg-scale $randompic
#echo $randompic