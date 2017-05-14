#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
else
    apt-get update
    isInstalled libopencv2.4-java
    if [ "$INSTALLED" == "$INSTALLED_YES" ]; then
        apt-get install libopencv2.4-java
    fi
    isInstalled librxtx-java
    if [ "$INSTALLED" == "$INSTALLED_YES" ]; then
        apt-get install librxtx-java
    fi
fi

createHeader "END $MODULE"