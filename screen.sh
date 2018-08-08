#!/bin/bash
# this script will refresh the HDMI display.
# in order to load HDMI at boot, even when unplugged: (instructions from http://blog.mivia.dk/solved-hdmi-working-raspberry-pi)
# sudo nano /boot/config.txt
# modify/add these lines:
# hdmim_force_hotplug=1
# hdmi_drive=2

tvservice -e "CEA 16"
sleep 3
fbset -depth 8 && fbset -depth 16
