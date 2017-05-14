#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info

echo ""
echo "##############################"
echo "# EV3Dev-lang-java Installer #"
echo "##############################"
echo "# Last update: 2017/05/14    #"
echo "##############################"
echo ""

function runModule(){
    local domain="https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules"
    wget "$domain/$1.sh"
    source "modules/$1.sh"
}

#Utilities
runModule utilities

echo "##############################"
echo "# PLATFORM SECTION           #"
echo "##############################"
echo ""

runModule platform

echo ""
echo "##############################"
echo "# JAVA SECTION               #"
echo "##############################"
echo ""

runModule java

#Bluetooth
#runModule bluetooth

exit 0