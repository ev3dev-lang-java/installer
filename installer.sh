#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info
# Author: Jakub Vaněk, linuxtardis@gmail.com

MODULE="unknown"
MODULE_FOLDER="module2"
ROOT_URL="https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules"

# $1 => module name
function download_module() {
    pushd "./$MODULE_FOLDER" >/dev/null
    wget -qN "$ROOT_URL/$1.sh"
    popd  >/dev/null
}

# $1 => module name
function run_module() {
    MODULE="$1"
    createHeader "$1"
    download_module "$1"
    source "$MODULE_FOLDER/$1.sh"
}

# $1 => module name
function inc_module() {
    download_module "$1"
    source "$MODULE_FOLDER/$1.sh"
}

function init_installer() {
    echo "Init installer"
    rm -rf "$MODULE_FOLDER"
    mkdir -p "$MODULE_FOLDER"
}

echo
echo "##############################"
echo "# EV3Dev-lang-java Installer #"
echo "##############################"
echo "# Last update: 2018/03/30    #"
echo "##############################"
echo


#Init
init_installer
inc_module vars
inc_module utilities

run_module platform


if [ "$1" == "help" ]; then
    run_module help

elif [ "$1" == "copy-installer" ]; then
    CREDENTIAL="$2"
    run_module copy-installer

elif [ "$1" == "batteryMonitor" ]; then
    run_module java
    run_module battery-monitor

elif [ "$1" == "extended" ]; then
    run_module java
    run_module native-libraries

else
    run_module java
fi

exit 0
