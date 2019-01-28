#!/bin/sh -e

#
# CI script to test if the installer works.
#

if [ "x$hw" = "xev3" ]; then
    export INSTALLER_OVERRIDE_PLATFORM=ev3
elif [ "x$hw" = "xrpi2" ]; then
    export INSTALLER_OVERRIDE_PLATFORM=brickpi3
fi


doTest() {
    echo
    echo
    echo "####################|  Testing: $1  |####################"
    echo
    # appcds is supported only on ev3 jri
    if [ "x$1" = "xappcds" ]; then
        if [ "x$hw" = "xev3" ]; then
            /home/robot/java/installer.sh "$1"
        else
            echo "< skipping appcds test >"
        fi
    else
        /home/robot/java/installer.sh "$1"
    fi
    return "$?"
}

doTest help
doTest update

echo
echo "#########################################################"
echo "#                 First install run                     #"
echo

doTest java
doTest opencv
doTest rxtx
doTest javaLibs
doTest appcds
doTest fulljdk

echo
echo "#########################################################"
echo "#                  Second install run                   #"
echo

doTest java
doTest opencv
doTest rxtx
doTest javaLibs
doTest appcds
doTest fulljdk


echo "Test successful."
exit 0
