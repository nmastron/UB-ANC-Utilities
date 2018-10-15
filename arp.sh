#!/bin/bash
# edit /etc/rc.local and add this line:
# sh /home/pi/ACBBA/arp.sh > /dev/null 2>&1 &

while :
do 
	for i in {1..11};
	do
		echo $i
		arp -s 192.168.1.$i $(cat mac_address_lookup.txt | awk 'FNR == "'$i'" {print}' | awk '{print $2}')
	done	
	arp -s 192.168.1.17  00:11:7f:1f:fd:c0
	arp -s 192.168.1.99  00:11:7f:4a:53:61
	sleep 5
done
