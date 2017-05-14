#!/bin/bash

echo ""
echo "##############################"
echo "# BLUETOOTH SECTION          #"
echo "##############################"
echo ""

#2. Install Bluetooth
if [ "$PLATFORM" == "$EV3" ];
then
    echo $EV3
    #isInstalled libbluetooth-dev
    #wget http://ftp.us.debian.org/debian/pool/main/b/bluez/libbluetooth-dev_5.23-2+b1_armel.deb
    #sudo dpkg --force-depends-version -i libbluetooth-dev_5.23-2+b1_armel.deb
else
    echo $BRICKPI
    isInstalled libbluetooth-dev
    #apt-get install libbluetooth-dev
fi