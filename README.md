# UB-ANC-Utilities

This repo contains utilities for the [UB-ANC Emulator](https://github.com/jmodares/UB-ANC-Emulator).

# Utility details

## start_emulator_logging.sh
This script can be used instead of [`start_emulator.sh`](https://github.com/jmodares/UB-ANC-Emulator/blob/master/script/start_emulator.sh) to launch the UB-ANC Emulator. This alternative script will do the following:

* Log all of the agents' outputs in their local directories (i.e., the nth MAV's log will be in **/objects/mav_n/**) named with the format **log_agent_YYYY-MM-DD-HH-MM-SS.log**
* Send all of their outputs in real-time to **stdout**.

Because of the large amount of information that is logged and displayed, you may experience a performance hit if you are emulating a large number of agents.

## network_interfaces
This is an example of interfaces file in /etc/network, that sets up the agents network. This is quite useful in case the agents need a static IP.
in this example, the first wifi interface is used as an adhoc network just for the agents, and there would be a second interface for connecting the agents to the internet.

## network_scan.sh
This script uses PING to check connectivity and find other agents on the network. call it with the interface name (or change the default wlan0 in the script) and it pings the whole range defined by the ip_floor and ip_ceiling.

## arp.sh
This script is called from /etc/rc.local (before "exit 0" line), to continuously update arp table manually. This is useful in case agents cannot find each other on the network for any reason.
Note that the IPs and Wifi interfaces MAC addresses are hardcoded in this script.

## screen.sh
When HDMI is connected after boot, the display won't show anything. This script has the info to force load HDMI.
Once force loading HDMI is enabled, one can connect display after boot. However the resolution is not set correctly. You can then run this script to fix the issue. (commandline only)

## set_time
This is just example to show how to manually fix the time zone and system time. It is important for the system to have the correct time.
If the system is not connected to the internet, it will lose track if time, and one should manually set the time after boot.
