#!/bin/bash

if [ -e "/home/robot/installer/installer.sh" ]; then
    echo $CREDENTIAL
    ssh $CREDENTIAL 'uptime'
    ssh $CREDENTIAL 'sudo mkdir /home/robot/installer/'
    scp "/home/robot/installer/installer.sh" "$CREDENTIAL:/home/robot/installer"
    ssh $CREDENTIAL 'sudo chmod +x /home/robot/installer.sh'
    exit
else
    echo "Sorry, the installer didn´t detect the installer"
    echo "on /home/robot/installer"
    echo "try to review your installation on your EV3 Brick."
    echo
    exit 1
fi