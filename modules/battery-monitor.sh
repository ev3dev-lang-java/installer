#!/bin/bash

function battmon_install() {
    wget "$BATTMON_URL" -O "$BATTMON_FILE"

    apt-get install unzip

    unzip "$BATTMON_FILE"
    mv "$BATTMON_ZIPBASE" "$BATTMON_BASE"
    chmod +x "$BATTMON_BASE/start.sh"
    chmod +x "$BATTMON_BASE/stop.sh"
    chmod +x "$BATTMON_BASE/batteryMonitor-service.sh"
    ln -s "$BATTMON_BASE/batteryMonitor-service.sh" "/etc/init.d"
    
    update-rc.d batteryMonitor-service.sh defaults
    "$BATTMON_BASE/start.sh" &
}

if [ "$PLATFORM" == "ev3"      ] ||
   [ "$PLATFORM" == "brickpi"  ] ||
   [ "$PLATFORM" == "brickpi3" ] ||
   [ "$PLATFORM" == "pistorms" ]; then

    if [ -d "$BATTMON_BASE" ]; then
        echo "We have detected a previous installation."
        echo "We will skip this step."
    else
        battmon_install
    fi

else
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
fi

createHeader "END $MODULE"
