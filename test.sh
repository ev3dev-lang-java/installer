#!/bin/sh -e

#
# CI script to test if the installer works.
#

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
