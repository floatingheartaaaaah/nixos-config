#!/bin/bash

# Get list of available Wi-Fi networks using nmcli
networks=$(nmcli -t -f SSID dev wifi)

# Show networks in rofi menu
selected=$(echo "$networks" | rofi -dmenu -i -p "Select Wi-Fi")

# Connect to selected Wi-Fi network
if [ -n "$selected" ]; then
    nmcli dev wifi connect "$selected"
fi


