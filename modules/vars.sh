#!/bin/bash

# java archive paths
JRI_OPT="/opt"
JRI_URL="https://ci.adoptopenjdk.net/view/ev3dev/job/openjdk11_build_ev3_linux/40/artifact/build/jri-ev3.tar.gz"
JRI_ZIP="/home/robot/installer/jri-ev3.tar.gz"
JRI_PATH_ZIP="$JRI_OPT/jri"
JRI_PATH_NEW="$JRI_OPT/jri-11"
JRI_EXE="$JRI_PATH_NEW/bin/java"
JRI_PRIORITY="11"

# brickpi java repository
JDEB_REPO="deb http://ftp.debian.org/debian buster main contrib non-free"
JDEB_PKG="openjdk-11-jre-headless"
JDEB_TMP_LINK="/usr/lib/jvm/java-11-openjdk-armhf/bin/java"

declare -g -A JAVA_LATEST
JAVA_LATEST[ev3]="11"
JAVA_LATEST[brickpi]="11"
JAVA_LATEST[brickpi3]="11"
JAVA_LATEST[pistorms]="11"

# graphics
CHARACTER="#"
SPACE=" "
TOTAL=40

# bluetooth
BT_BRICKPI_PKG="libbluetooth-dev"

# platform detection
BATT_EV3_STRETCH="/sys/class/power_supply/lego-ev3-battery"
BATT_EV3_JESSIE="/sys/class/power_supply/legoev3-battery"
BATT_BRICKPI="/sys/class/power_supply/brickpi-battery"
BATT_BRICKPI3="/sys/class/power_supply/brickpi3-battery"
BATT_PISTORMS="/sys/class/power_supply/pistorms-battery"

# installer copy
INSTALLER_DIR="/home/robot/installer"
INSTALLER_EXE="/home/robot/installer/installer.sh"
