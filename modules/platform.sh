#!/bin/bash

PLATFORM="unknown"

#1. Detect platform
if [ -d "$BATT_EV3" ]; then
    PLATFORM="ev3"

elif [ -d "$BATT_BRICKPI" ]; then
    PLATFORM="brickpi"

elif [ -d "$BATT_BRICKPI3" ]; then
    PLATFORM="brickpi3"

elif [ -d "$BATT_PISTORMS" ]; then
    PLATFORM="pistorms"
fi
echo "Platform detected: $PLATFORM"
echo

if [ "$PLATFORM" == "unknown" ]; then
    echo "Sorry, this platform is not recognized by the installer."
    echo "This installer was designed for EV3Dev hardware."
    echo
    echo "Open a issue if the problem continues:"
    echo "https://github.com/ev3dev-lang-java/ev3dev-lang-java/issues"
    echo
    exit 1
fi

#1.1 Detect if the brick is not using latest kernel
ev3dev_version="$(uname -r)"
if [ "$ev3dev_version" == "$EV3DEV_TESTED" ]; then
    echo "You have a supported kernel version ($ev3dev_version)."
else
    echo "This installer wasn't tested with the current kernel version ($ev3dev_version).";
    echo
    echo "sudo apt-get update"
    echo "sudo apt-get upgrade"
    echo "sudo apt-get dist-upgrade"
    echo "sudo reboot"
fi
