#!/bin/bash
 
ip_address=$(cat ~/.config/polybar/scripts/machine | awk '{print $1}')
machine_name=$(cat ~/.config//polybar/scripts/machine | awk '{print $2}')
 
if [ $ip_address ] && [ $machine_name ]; then
    echo "${F#FE2E2E}%{F#FFFFFF}$ip_address%{u-} - $machine_name"
else
    echo "${F#E73D3D}%{u-}%{F#ffffff}Máquina Desconectada"
fi
