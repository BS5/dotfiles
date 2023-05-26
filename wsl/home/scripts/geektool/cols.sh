#!/usr/bin/env bash

OUTPUT=""

### Android Git Branch ###

GIT_BRANCH=$(cd $HOME/src/buildertrend-android && git status | head -1 | awk {'print $3'})

### Public IP address ###

PUBLIC_IP=$(curl -s ifconfig.co | awk {'print "P:" $1'})

### Wireless IP ###

wifiOrAirport=$(/usr/sbin/networksetup -listallnetworkservices | grep -Ei '(Wi-Fi|AirPort)')
wirelessDevice=$(/usr/sbin/networksetup -listallhardwareports | awk "/$wifiOrAirport/,/Device/" | awk 'NR==2' | cut -d " " -f 2)
wirelessIP=$(ipconfig getifaddr $wirelessDevice)

### Wired IP ###

# wiredDevice=$(networksetup -listallhardwareports | grep -A 1 "Port: Ethernet" | sed -n 's/Device/&/p' | awk '{print $2}')
wiredDevice=$(networksetup -listallhardwareports | grep -A 1 "CYUSB3610" | sed -n 's/Device/&/p' | awk '{print $2}')
wiredIP=$(ipconfig getifaddr $wiredDevice)

#echo "W: $wirelessIP"
#echo "E: $wiredIP"

### HostName ###


HOSTNAME=$(scutil --get HostName)
LOCAL_HOSTNAME=$(scutil --get LocalHostName)
COMPUTER_NAME=$(scutil --get ComputerName)

OUTPUT="${PUBLIC_IP} ${COMPUTER_NAME}"
OUTPUT="$OUTPUT\nW:${wirelessIP} E:${wiredIP} ${GIT_BRANCH}\n"
echo -ne $OUTPUT | column -t

#OUTPUT="W:${wirelessIP} E:${wiredIP}"
#echo -ne $OUTPUT #| column -t
echo
