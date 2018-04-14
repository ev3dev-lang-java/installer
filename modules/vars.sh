#!/bin/bash

# java archive paths
JAVA_OPT="/opt"
JAVA_URL="https://github.com/ev3dev-lang-java/openjdk-ev3/releases/download/v0.5.0/jri10-ev3.tar.gz"
JAVA_ZIP="/home/robot/installer/jri10-ev3.tar.gz"
JAVA_PATH_ZIP="$JAVA_OPT/jri-ev3/"
JAVA_PATH_NEW="$JAVA_OPT/jri-10-build-050"
JAVA_EXE="$JAVA_PATH_NEW/bin/java"


# brickpi java repository
WEBUPD8_KEY="C2518248EEA14886"
WEBUPD8_REPO="deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"

# graphics
CHARACTER="#"
SPACE=" "
TOTAL=40

# bluetooth
BT_BRICKPI_PKG="libbluetooth-dev"

# platform detection
EV3DEV_TESTED="4.4.47-19-ev3dev-ev3"
BATT_EV3="/sys/class/power_supply/lego-ev3-battery"
BATT_BRICKPI="/sys/class/power_supply/brickpi-battery"
BATT_BRICKPI3="/sys/class/power_supply/brickpi3-battery"
BATT_PISTORMS="/sys/class/power_supply/pistorms-battery"

# installer copy
INSTALLER_DIR="/home/robot/installer"
INSTALLER_EXE="/home/robot/installer/installer.sh"

# battery monitor
BATTMON_URL="https://github.com/ev3dev-lang-java/batteryMonitor/raw/release/v0.2.0-RELEASE/releases/batteryMonitor-0.2.0-RELEASE.zip"
BATTMON_FILE="/home/robot/batterymonitor.zip"
BATTMON_ZIPBASE="/home/robot/batteryMonitor-0.2.0-RELEASE"
BATTMON_BASE="/home/robot/batteryMonitor"
