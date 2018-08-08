#!/bin/bash
# this script should be called from /etc/rc.local to continuously update arp table
# check IP/MAC addresses to ensure matching.

while :
do 
	arp -s 192.168.1.1 00:11:7f:4a:53:61
	arp -s 192.168.1.2 00:13:ef:40:0f:4c
	arp -s 192.168.1.3 00:11:7f:1f:fd:c0
	sleep 5
done
# other dongles:
# small wifi: 00:0f:60:09:bc:31
