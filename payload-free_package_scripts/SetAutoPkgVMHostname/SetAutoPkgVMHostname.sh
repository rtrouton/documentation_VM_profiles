#!/bin/bash

machine_name=autopkg
serial_number=`/usr/sbin/ioreg -l | awk '/IOPlatformSerialNumber/ {print $4}' | sed 's/\"//g'`

# Set Mac's hostname to computername

/usr/sbin/scutil --set ComputerName "$machine_name"-"$serial_number"
/usr/sbin/scutil --set LocalHostName "$machine_name"-"$serial_number"
/usr/sbin/scutil --set HostName "$machine_name"-"$serial_number"

exit 0