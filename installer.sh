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

#Platform
wget https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules/platform.sh
source modules/platform.sh

#Java
wget https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules/java.sh
source modules/java.sh

#Bluetooth
wget https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules/bluetooth.sh
source modules/bluetooth.sh


# Utilities
INSTALLED="NO";
function isInstalled(){
    echo "Parameter #1 is $1"
    local result = dpkg-query -W -f='${Status}\n' $1 | head -n1 | awk '{print $3;}' | grep -q '^installed$'
    INSTALLED=$result;
}

exit 0