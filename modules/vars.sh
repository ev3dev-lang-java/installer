#!/bin/bash

# java archive paths
 JRE_ORACLE_PATH="/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz"
JRI_OPENJDK_PATH="/home/robot/jri-ev3.tar.gz"
JDK_OPENJDK_PATH="/home/robot/jdk-ev3.tar.gz"

# java exe paths
 JRE_ORACLE_EXE="/opt/ejdk1.8.0/linux_arm_sflt/jre/bin/java"
JRI_OPENJDK_EXE="/opt/jri-ev3/bin/java"
JDK_OPENJDK_EXE="/opt/jdk/bin/java"

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
BATT_EV3="/sys/class/power_supply/legoev3-battery"
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
