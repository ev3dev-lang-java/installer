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
MODULE_FOLDER="module2"
function runModule(){
    if ! [ "$2" == "$OFF" ]; then
        createHeader $1
    fi
    local domain="https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules"
    wget -N "$domain/$1.sh"
    MODULE=$1
    mv ./$1.sh ./$MODULE_FOLDER/$1.sh
    source "$MODULE_FOLDER/$1.sh"
}

function initInstaller(){
    echo "Init installer"
    mkdir -p $MODULE_FOLDER
    rm ./$MODULE_FOLDER/*
}

MODE_EXTENDED="extended"
MODE_JDK="jdk"

#Init
initInstaller
runModule utilities 0

CREDENTIAL=""
if [ "$1" == "$MODE_JDK" ]; then
    CREDENTIAL=$2
    runModule copy-jdk
    exit 0
fi

runModule platform
runModule java

exit

if [ "$1" == "$MODE_EXTENDED" ]; then
    runModule native-libraries
fi

runModule battery-monitor

exit 0