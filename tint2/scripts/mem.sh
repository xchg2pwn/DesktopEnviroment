#!/bin/bash

mem=$(top -bn 1 | grep Mem | awk '{print $8}' | sed 's/,.*//g')

if [ $mem -lt 1000 ]; then
    echo "󰆼" " ""1000 MiB" "  "
else
    echo "󰆼" " ""$mem MiB" "  "
fi
