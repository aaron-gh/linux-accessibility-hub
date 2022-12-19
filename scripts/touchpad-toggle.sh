#!/usr/bin/env bash
#Assign output of grep to a variable
syngrep=$(synclient -l | grep "TouchpadOff")
#assign 1/0 to variable onoff
onoff=${syngrep: -1}
#if off
if [ "$onoff" == "1" ]; then
    synclient TouchpadOff=0
    espeak-ng "Touchpad Enabled!"
elif [ "$onoff" == "0" ]; then
    synclient TouchpadOff=1
    espeak-ng "Touchpad Disabled!"
fi
