#!/bin/bash

local JAVA_PAK

if [ -e "$JRE_ORACLE_PATH" ]; then
    JAVA_PAK="$JRE_ORACLE_PATH"

elif [ -e "$JRI_OPENJDK_PATH" ]; then
    JAVA_PAK="$JRI_OPENJDK_PATH"

elif [ -e "$JDK_OPENJDK_PATH" ]; then
    JAVA_PAK="$JDK_OPENJDK_PATH"

else
    echo "Sorry, the installer didn't detect any Java archive."
    echo "on /home/robot"
    echo "try to copy the file again to the EV3 Brick."
    echo
    exit 1
fi

echo "SSHing to: $CREDENTIAL"
scp "$JAVA_PAK" "$CREDENTIAL:/home/robot"
exit
