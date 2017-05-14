#!/bin/bash

if [ -e "/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz" ]; then
    scp "/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz" "$CREDENTIAL:/home/robot"
else
    echo "Sorry, the installer didn´t detect ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz"
    echo "on /home/robot"
    echo "try to copy the file again to the EV3 Brick."
    echo
    exit 1
fi