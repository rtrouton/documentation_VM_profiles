#!/bin/bash

machine_name=computername

# Set Mac's hostname

/usr/sbin/scutil --set ComputerName "$machine_name"
/usr/sbin/scutil --set LocalHostName "$machine_name"
/usr/sbin/scutil --set HostName "$machine_name"

exit 0