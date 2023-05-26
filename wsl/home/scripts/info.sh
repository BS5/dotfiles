#!/bin/env bash

echo "Private IPs"
ifconfig | grep netmask | grep -v 127.0.0.1 | awk {'print "  " $2'}
echo

echo "Public IP"
curl -s ifconfig.co | awk {'print "  " $1'}
echo

echo "Disk Information"
df -Hl | grep 'disk' | awk '{print "  " $4"/"$2" free ("$5" used)"}'
echo

