#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
else

    apt-get install libopencv2.4-java
    apt-get install librxtx-java

fi

echo "################################"
echo "# END NATIVE LIBRARIES SECTION #"
echo "################################"
echo