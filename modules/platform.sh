#!/bin/bash

EV3="EV3"
BRICKPI="BRICKPI"
UNKNOWN="UNKNOWN"
PLATFORM=$UNKNOWN

#0. Detect platform
if [ -d "/sys/class/power_supply/legoev3-battery" ]; then
  echo "The user has a EV3 Brick"
  PLATFORM=$EV3
elif [ -d "/sys/class/power_supply/brickpi-battery" ]; then
  echo "The user has a BrickPi+"
  PLATFORM=$BRICKPI
fi
echo "Platform detected: $PLATFORM"
echo

if [ "$PLATFORM" == "$UNKNOWN" ]; then
    echo "Sorry, this platform is not recognized by the installer."
    echo "This installer was designed for EV3Dev hardware."
    echo
    echo "Open a issue if the problem continues:"
    echo "https://github.com/ev3dev-lang-java/ev3dev-lang-java/issues"
    echo
    exit 1
fi

createHeader "END $MODULE"