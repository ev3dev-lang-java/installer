#!/bin/sh -e

#
# CI script to test if the installer works.
#

if [ "x$HW_PLATFORM" = "xev3" ]; then
    export INSTALLER_OVERRIDE_PLATFORM=ev3
elif [ "x$HW_PLATFORM" = "xrpi2" ]; then
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
