#!/usr/bin/env bash

scutil --get ComputerName;
sw_vers | awk -F':\t' '{print $2}' | paste -d ' ' - - -;
sysctl -n hw.memsize | awk '{print $0/1073741824" GB RAM"}';
sysctl -n machdep.cpu.brand_string;

echo

df -Hl | grep 'disk' | awk '{print $4"/"$2" free ("$5" used)"}'
