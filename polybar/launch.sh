#!/usr/bin/env sh

# Terminar las instancias de barra que ya se están ejecutando
killall -q polybar

# Espere hasta que los procesos se hayan cerrado.
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Barra superior
polybar apagado -c ~/.config/polybar/current.ini &
polybar parrot -c ~/.config/polybar/current.ini &
polybar hackthebox -c ~/.config/polybar/current.ini &
polybar objetivo -c ~/.config/polybar/current.ini &
polybar escritorios -c ~/.config/polybar/current.ini &

# Barra inferior
polybar icono -c ~/.config/polybar/current.ini &
polybar hora -c ~/.config/polybar/current.ini &
polybar procesador -c ~/.config/polybar/current.ini &
polybar memoria -c ~/.config/polybar/current.ini &
polybar spotify -c ~/.config/polybar/current.ini &
polybar controlspotify -c ~/.config/polybar/current.ini &
polybar volumen -c ~/.config/polybar/current.ini &
