#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info

echo
echo "##############################"
echo "# EV3Dev-lang-java Installer #"
echo "##############################"
echo "# Last update: 2017/05/14    #"
echo "##############################"
echo

OFF=0
MODULE="EMPTY"
function runModule(){
    if ! [ "$2" == "$OFF" ]; then
        createHeader $1
    fi
    local domain="https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules"
    wget "$domain/$1.sh"
    MODULE=$1
    mkdir -p modules2
    mv ./$1.sh ./modules2/$1.sh
    source "modules2/$1.sh"
}

#Utilities
runModule utilities 0
runModule platform

runModule native-libraries

exit

runModule java
runModule battery-monitor
runModule native-libraries

exit 0