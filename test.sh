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
    echo "Testing: $1"
    /home/robot/java/installer.sh "$1"
    return "$?"
}

doTest help
doTest update
doTest java
doTest nativeLibs
doTest javaLibs

if [ "x$dist" = "xstretch" ]; then
    doTest appcds
fi

echo "Test successful."
exit 0
