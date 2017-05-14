#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info

echo
echo "##############################"
echo "# EV3Dev-lang-java Installer #"
echo "##############################"
echo "# Last update: 2017/05/14    #"
echo "##############################"

function runModule(){
    local domain="https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules"
    wget "$domain/$1.sh"
    source "modules/$1.sh"
}

#Utilities
runModule utilities

echo
echo "##############################"
echo "# PLATFORM SECTION           #"
echo "##############################"
echo

runModule platform

echo
echo "##############################"
echo "# JAVA SECTION               #"
echo "##############################"
echo

runModule java

echo
echo "###############################"
echo "# BATTERY MONITOR SECTION     #"
echo "###############################"
echo

runModule battery-monitor

echo "################################"
echo "# NATIVE LIBRARIES SECTION     #"
echo "################################"
echo

runModule native-libraries

exit 0