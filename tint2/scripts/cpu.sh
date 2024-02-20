#!/bin/bash
cpu=$(top -bn 1 | grep Cpu | awk '{print $2}' | sed 's/,.*//g')

if [ $cpu == 0 ]; then
    cpu=00
fi

echo "" "󰍛" "  ""$cpu%" ""
