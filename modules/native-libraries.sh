#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
else
    isInstalled libopencv2.4-java
    isInstalled librxtx-java
    apt-get install libopencv2.4-java
    apt-get install librxtx-java

fi

createHeader "END $MODULE"