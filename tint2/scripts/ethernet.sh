#!/bin/bash

# Verifica si la interfaz tun0 existe
if ifconfig eth0 &> /dev/null; then
    # Obtiene la dirección IP de la interfaz tun0
    ip=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}')
    echo $ip "    "
else
    echo "Desconectado" "    "
fi
