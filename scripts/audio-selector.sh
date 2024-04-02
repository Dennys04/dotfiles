#!/bin/bash


# Obtener una lista de las salidas de audio disponibles

sink_list=$(pactl list short sinks | awk '{print $2}')

# Mostrar la lista de salidas de audio utilizando Rofi

selected_sink=$(echo "$sink_list" | rofi -dmenu -p "Selecciona una salida de audio")

# Establecer la salida de audio seleccionada como la salida predeterminada

if [ -n "$selected_sink" ]; then
	pactl set-default-sink "$selected_sink"
	echo "Salida de audio cambiada a $selected_sink"
fi
