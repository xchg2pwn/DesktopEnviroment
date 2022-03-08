#!/bin/sh

echo "%{F#00BFFF}%{F#FFFFFF}$(/usr/sbin/ifconfig ens33 | grep "inet " | awk '{print $2}')%{u-}"
