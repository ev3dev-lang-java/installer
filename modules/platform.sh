#!/bin/bash

EV3="EV3"
BRICKPI="BRICKPI"
BRICKPI="BRICKPI3"
PISTORMS="PISTORMS"
UNKNOWN="UNKNOWN"
PLATFORM=$UNKNOWN

EV3_EV3DEV="4.4.47-19-ev3dev-ev3"

#1. Detect platform
#1.1 Detect if the brick is not using latest kernel
if [ -d "/sys/class/power_supply/legoev3-battery" ]; then
  echo "The user has a EV3 Brick"
  PLATFORM=$EV3
  ev3dev_version="$(uname -r)"
  if [ "$ev3dev_version" == "$EV3_EV3DEV" ]; then
    echo "You have latest ev3dev version: $EV3_EV3DEV"
  else
    echo "Please review your ev3dev version to continue";
    echo
    echo "sudo apt-get update"
    echo "sudo apt-get upgrade"
    echo "sudo apt-get dist-upgrade"
    echo "sudo reboot"
  fi
elif [ -d "/sys/class/power_supply/brickpi-battery" ]; then
  echo "The user has a BrickPi+"
  PLATFORM=$BRICKPI
elif [ -d "/sys/class/power_supply/brickpi3-battery" ]; then
  echo "The user has a BrickPi3"
  PLATFORM=$BRICKPI3
elif [ -d "/sys/class/power_supply/pistorms-battery" ]; then
  echo "The user has a PiStorms"
  PLATFORM=$PISTORMS
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