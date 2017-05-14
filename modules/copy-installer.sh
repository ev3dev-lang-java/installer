#!/bin/bash

if [ -e "/home/robot/installer/installer.sh" ]; then
    echo $CREDENTIAL
    ssh $CREDENTIAL 'bash -s' < mkdir installer
    scp "/home/robot/installer/installer.sh" "$CREDENTIAL:/home/robot"
    ssh $CREDENTIAL 'bash -s' < chmod +x installer.sh
    exit
else
    echo "Sorry, the installer didn´t detect the installer"
    echo "on /home/robot/installer"
    echo "try to review your installation on your EV3 Brick."
    echo
    exit 1
fi