#!/bin/bash

if ifconfig tun0 &> /dev/null; then
    ip=$(ifconfig tun0 | grep 'inet ' | awk '{print $2}')
    echo $ip "      "
else
    echo "Desconectado" "      "
fi
