#!/bin/bash

machine_name=autodmg
osversion=$(sw_vers -productVersion | sed 's/\.//g')
osbuild=$(sw_vers -buildVersion)
serial_number=`/usr/sbin/ioreg -l | awk '/IOPlatformSerialNumber/ {print $4}' | sed 's/\"//g'`

# Set Mac's hostname

/usr/sbin/scutil --set ComputerName "$machine_name"-"$osversion""$osbuild"-"$serial_number"
/usr/sbin/scutil --set LocalHostName "$machine_name"-"$osversion""$osbuild"-"$serial_number"
/usr/sbin/scutil --set HostName "$machine_name"-"$osversion""$osbuild"-"$serial_number"

exit 0