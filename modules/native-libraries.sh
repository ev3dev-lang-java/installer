#!/bin/bash

#This installation is the same for EV3 Brick & BrickPi/PiStorms

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
else
    apt-get update
    isInstalled libopencv2.4-java
    if [ "$INSTALLED" == "$INSTALLED_NO" ]; then
        apt-get install libopencv2.4-java
    fi
    isInstalled librxtx-java
    if [ "$INSTALLED" == "$INSTALLED_NO" ]; then

        if [ "$PLATFORM" == "$EV3" ]; then
            wget http://ftp.us.debian.org/debian/pool/main/r/rxtx/librxtx-java_2.2pre2-13_armel.deb
            dpkg -i librxtx-java_2.2pre2-13_armel.deb
        else
            apt-get install librxtx-java            
        fi
        
    fi
fi

createHeader "END $MODULE"