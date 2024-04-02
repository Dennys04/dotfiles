#!/bin/bash


# Obtener la distribuccion actual del teclado

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Cambiar la distribuicion del telclado a la opuesta

if [ "$current_layout" == "us" ]; then
	new_layout="es"
else
	new_layout="us"
fi

# Aplicar el cambio de distribucion del teclado
setxkbmap $new_layout

echo "Distribucion del teclado cambiada a '$new_layout'"


