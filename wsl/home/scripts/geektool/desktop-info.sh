#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

# 
# IP Addresses
# 
IP_INFO=$($BASEDIR/ipinfo.sh)
echo "$IP_INFO"
echo 

#
# Disk space
#
echo "$($BASEDIR/system.sh)"
echo
