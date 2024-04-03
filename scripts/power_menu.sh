#!/bin/bash

options="Shutdown\nReboot\nLock\nSuspend\nHibernate"

chosen=$(echo -e "$options" | rofi -dmenu -markup -i -p "Power Menu: ")

case "$chosen" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Lock)
        dm-tool switch-to-greeter
        ;;
    Suspend)
        systemctl suspend
        ;;
    Hibernate)
        systemctl hibernate
        ;;
    *)
        echo "Invalid option: $chosen"  # Agregamos esta línea para manejar opciones no válidas
        ;;
esac


