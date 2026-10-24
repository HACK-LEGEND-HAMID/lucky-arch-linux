#!/bin/bash

choice=$(printf '%s\n' \
"󰕾  Volume" \
"󰃟  Brightness" \
"󰤨  Wi-Fi" \
"󰂯  Bluetooth" \
"󰂄  Battery" \
"⚙  Settings" \
"⏻  Power" |
rofi -dmenu \
    -i \
    -p "Control Center" \
    -theme ~/.config/rofi/control-center.rasi)

case "$choice" in
    *Volume)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
    *Brightness)
        brightnessctl set 5%+
        ;;
    *Wi-Fi)
        nm-connection-editor
        ;;
    *Bluetooth)
        blueman-manager
        ;;
    *Battery)
        kitty -e btop
        ;;
    *Settings)
        kitty -e nmtui
        ;;
    *Power)
        systemctl poweroff
        ;;
esac
