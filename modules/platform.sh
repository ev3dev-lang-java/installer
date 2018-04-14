#!/bin/bash

PLATFORM="unknown"

#1. Detect platform
if [ -d "$BATT_EV3" ]; then
    PLATFORM="ev3"

elif [ -d "$BATT_BRICKPI" ]; then
    PLATFORM="brickpi"

elif [ -d "$BATT_BRICKPI3" ]; then
    PLATFORM="brickpi3"

elif [ -d "$BATT_PISTORMS" ]; then
    PLATFORM="pistorms"
fi
echo "Platform detected: $PLATFORM"
echo

if [ "$PLATFORM" == "unknown" ]; then
    echo "Sorry, this platform is not recognized by the installer."
    echo "This installer was designed for EV3Dev hardware."
    echo
    echo "Open a issue if the problem continues:"
    echo "https://github.com/ev3dev-lang-java/ev3dev-lang-java/issues"
    echo
    exit 1
fi
