#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "ev3"      ] ||
   [ "$PLATFORM" == "brickpi"  ] ||
   [ "$PLATFORM" == "brickpi3" ] ||
   [ "$PLATFORM" == "pistorms" ]; then

    apt-get update
    apt-get install --yes --no-install-recommends libopencv2.4-java librxtx-java

else
    echo "This platform: $PLATFORM is not suitable for native libraries."
    echo
fi

createHeader "END $MODULE"
