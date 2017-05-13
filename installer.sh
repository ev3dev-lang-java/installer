#!/bin/bash
# A Bash scripts to install Libraries and Configure a Brick in an easy Way.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info

PLATFORM="UNKNOWN"

#0. Detect platform
if [ -d "/sys/class/power_supply/legoev3-battery" ]; then
  echo "The user has a EV3 Brick"
  PLATFORM="EV3"
else
  echo "The user has a BrickPi+"
  PLATFORM="BRICKPI"
fi

#1. Detect Java
#1.1 Install Java PENDING
#1.2 Create JAVA_HOME PENDING
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME
    _java="$JAVA_HOME/bin/java"
else
    echo "no java"
fi

#2. Install Bluetooth
if [PLATFORM=="EV3" ]
then
    echo "EV3"
else
    echo "BRICKPI"
    apt get install libbluetooth-dev
fi