#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "ev3"      ] ||
   [ "$PLATFORM" == "brickpi"  ] ||
   [ "$PLATFORM" == "brickpi3" ] ||
   [ "$PLATFORM" == "pistorms" ]; then

    apt-get update && apt-get install libopencv2.4-java librxtx-java

else
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
fi

createHeader "END $MODULE"
