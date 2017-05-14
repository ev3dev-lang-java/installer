#!/bin/bash

function installBatteryMonitor() {
    cd /home/robot
    wget https://github.com/ev3dev-lang-java/batteryMonitor/raw/develop/releases/batteryMonitor-0.2.0-SNAPSHOT.zip
    unzip batteryMonitor-0.2.0-SNAPSHOT.zip
    mv batteryMonitor-0.2.0-SNAPSHOT batteryMonitor
    cd batteryMonitor
    chmod +x ./start.sh
    chmod +x ./stop.sh
    cp batteryMonitor-service.sh /etc/init.d
    cd /etc/init.d
    chmod +x batteryMonitor-service.sh
    update-rc.d batteryMonitor-service.sh defaults
    cd /home/robot/batteryMonitor
    ./start.sh
    ps aux | grep java
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

echo "###############################"
echo "# END BATTERY MONITOR SECTION #"
echo "###############################"
echo