#!/bin/bash

echo "Installer options:"
echo "sudo ./installer.sh [Execute modules: platform, java & batteryMonitor]"
echo "sudo ./installer.sh batteryMonitor [Install batteryMonitor]"
echo "sudo ./installer.sh extended [Execute modules: platform, java, batteryMonitor & native-libraries]"
echo "sudo ./installer.sh jdk robot@192.168.1.206 [Copy your local JRE to a remote brick]"
echo "sudo ./installer.sh copy-installer robot@192.168.1.206 [Copy the installer to a remote brick]"
echo
exit