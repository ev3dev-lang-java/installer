#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info

echo ""
echo "##############################"
echo "# EV3Dev-lang-java Installer #"
echo "##############################"
echo "# Last update: 2017/05/13    #"
echo "##############################"
echo ""

echo "##############################"
echo "# PLATFORM SECTION           #"
echo "##############################"
echo ""

PLATFORM="UNKNOWN"

#0. Detect platform
if [ -d "/sys/class/power_supply/legoev3-battery" ]; then
  echo "The user has a EV3 Brick"
  PLATFORM="EV3"
else
  echo "The user has a BrickPi+"
  PLATFORM="BRICKPI"
fi
echo $PLATFORM
T2="EV3"
echo $T2

echo ""
echo "##############################"
echo "# JAVA SECTION               #"
echo "##############################"
echo ""

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

echo "##############################"
echo "# BLUETOOTH SECTION          #"
echo "##############################"
echo ""

#2. Install Bluetooth
if ["$PLATFORM" = "$T2" ];
then
    echo "EV3"
    wget http://ftp.us.debian.org/debian/pool/main/b/bluez/libbluetooth-dev_5.23-2+b1_armel.deb
    dpkg -i libbluetooth-dev_5.23-2+b1_armel.deb
else
    echo "BRICKPI"
    isInstalled libbluetooth-dev
    #apt-get install libbluetooth-dev
fi

# Utilities
INSTALLED = "NO";
function isInstalled(){
    echo "Parameter #1 is $1"
    local result = dpkg-query -W -f='${Status}\n' $1 | head -n1 | awk '{print $3;}' | grep -q '^installed$'
    INSTALLED=$result;
}
exit 0