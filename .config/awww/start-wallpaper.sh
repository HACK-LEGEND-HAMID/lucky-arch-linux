#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

awww-daemon &
sleep 1

WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
    -iname "*.png" -o \
    -iname "*.jpg" -o \
    -iname "*.jpeg" -o \
    -iname "*.webp" \
\) | shuf -n 1)

awww img "$WALLPAPER"
