#!/bin/sh -e

#
# CI script to test if the installer works.
#

DIST="$1"
HW="$2"

if [ "x$HW" = "xev3" ]; then
    export INSTALLER_OVERRIDE_PLATFORM=ev3
elif [ "x$HW" = "xrpi2" ]; then
    export INSTALLER_OVERRIDE_PLATFORM=brickpi3
fi

doTest() {
    echo "Testing: $1"
    /home/robot/java/installer.sh "$1"
    return "$?"
}

doTest help
doTest update
doTest java
doTest nativeLibs
doTest javaLibs

if [ "x$DIST" = "xstretch" ]; then
    doTest appcds
fi

echo "Test successful."
exit 0
