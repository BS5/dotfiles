#!/usr/bin/env bash

ifconfig | grep netmask | grep -v 127.0.0.1 | awk {'print $2'}
curl -s ifconfig.co | awk {'print $1'}
