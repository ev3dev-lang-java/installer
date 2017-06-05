#!/bin/bash

function installBatteryMonitor() {
    cd /home/robot
    wget https://github.com/ev3dev-lang-java/batteryMonitor/raw/release/v0.2.0-RELEASE/releases/batteryMonitor-0.2.0-RELEASE.zip

    #TODO Move block to function
    isInstalled unzip
    if [ "$INSTALLED" == "$INSTALLED_NO" ]; then
        if [ "$PLATFORM" == "$EV3" ]; then

            mkdir -p packages
            cd packages
            wget http://ftp.us.debian.org/debian/pool/main/u/unzip/unzip_6.0-16+deb8u3_armel.deb
            sudo dpkg -i unzip_6.0-16+deb8u3_armel.deb
            cd ..
        else
            apt-get install unzip
        fi

    fi

    #TODO Move to a function
    unzip batteryMonitor-0.2.0-RELEASE.zip
    mv batteryMonitor-0.2.0-RELEASE batteryMonitor
    cd batteryMonitor
    chmod +x ./start.sh
    chmod +x ./stop.sh
    cp batteryMonitor-service.sh /etc/init.d
    cd /etc/init.d
    chmod +x batteryMonitor-service.sh
    update-rc.d batteryMonitor-service.sh defaults
    cd /home/robot/batteryMonitor
    ./start.sh &
}

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "This platform: $PLATFORM is not suitable for Battery Monitor."
    echo
else

    if [ -d "/home/robot/batteryMonitor" ]; then
        echo "We have detected a previous installation."
        echo "We will skip this step."
    else
        installBatteryMonitor
    fi

fi

createHeader "END $MODULE"