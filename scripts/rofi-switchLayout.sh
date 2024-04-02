#!/bin/bash

# Opciones para el menú de Rofi
options="es\nus"

# Mostrar el menú de Rofi y obtener la selección del usuario
selected=$(echo -e $options | rofi -dmenu -p "Selecciona el layout del teclado:")

# Aplicar el layout seleccionado
setxkbmap $selected

