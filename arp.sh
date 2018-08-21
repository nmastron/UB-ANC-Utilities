#!/bin/bash
while :
do 
	arp -s 192.168.1.1  00:11:7f:4a:53:61
	arp -s 192.168.1.2  00:13:ef:40:0f:4c
	arp -s 192.168.1.3  00:11:7f:1f:fd:c0
	arp -s 192.168.1.5  00:c2:c6:d3:4b:b3
	arp -s 192.168.1.6  b8:27:eb:ce:fb:9e
	arp -s 192.168.1.7  b8:27:eb:79:b5:2d
	arp -s 192.168.1.8  b8:27:eb:b1:9f:a5
	arp -s 192.168.1.9  b8:27:eb:e8:45:c7

	arp -s 192.168.1.17  00:0f:00:4e:30:21
	arp -s 192.168.1.99  b8:27:eb:e8:45:c7
	sleep 5
done
