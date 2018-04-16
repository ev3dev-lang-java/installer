#!/bin/bash

if [ -e "$INSTALLER_EXE" ]; then
    chmod +x "$INSTALLER_EXE"

    echo "SSHing to: $CREDENTIAL"
    ssh "$CREDENTIAL" "uptime; sudo mkdir -p $INSTALLER_DIR"
    scp "$INSTALLER_EXE" "$CREDENTIAL:$INSTALLER_DIR"
    exit
else
    echo "Sorry, the installer didn´t detect the installer"
    echo "on /home/robot/installer"
    echo "try to review your installation on your EV3 Brick."
    echo
    exit 1
fi
