#!/bin/bash

# Level of battery
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

# Icons
battery_icon=""
charger_icon=""

# Nord ColorScheme
nord_blue="%{F#81A1C1}"
nord_yellow="%{F#EBCB8B}"
nord_orange="%{F#D08770}"
nord_red="%{F#BF616A}"
nord_green="%{F#A3BE8C}"

# Function to show in polybar
show_battery_status() {
    if [ -f "/sys/class/power_supply/AC0/online" ] && [ $(cat /sys/class/power_supply/AC0/online) -eq 1 ]; then
        echo "%{F#81A1C1} $charger_icon %{F-} Charging $battery_level%"
    else
        if (( battery_level >= 75 )); then
            color="$nord_green"
        elif (( battery_level >= 50 )); then
            color="$nord_yellow"
        elif (( battery_level >= 25 )); then
            color="$nord_orange"
        else
            color="$nord_red"
        fi
        echo "$color $battery_icon %{F-} Battery: $battery_level%"
    fi
}

# Call the function to show the status of the battery in the polybar
show_battery_status

