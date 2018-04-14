#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "ev3"      ] ||
   [ "$PLATFORM" == "brickpi"  ] ||
   [ "$PLATFORM" == "brickpi3" ] ||
   [ "$PLATFORM" == "pistorms" ]; then

    apt-get update
    
    if [ "$(isInstalled libopencv2.4-java)" == "no" ]; then
        apt-get install --yes --no-install-recommends libopencv2.4-java
    fi
    
    if [ "$(isInstalled librxtx-java)" == "no" ]; then
        apt-get install --yes --no-install-recommends librxtx-java
    fi

else
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
fi

createHeader "END $MODULE"
