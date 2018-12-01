#!/bin/bash
# A Bash script to install Linux Libraries used on EV3Dev-lang-java.
# Author: Juan Antonio Breña Moral, bren@juanantonio.info
# Author: Jakub Vaněk, linuxtardis@gmail.com


# FUNCTIONS

############################
# Print initial elj header
function print_info_header() {
    echo
    echo "##############################"
    echo "# EV3Dev-lang-java Installer #"
    echo "##############################"
    echo
}

######################################
# Set global configuration variables
function set_configuration() {
    # packages
    declare -g LIB_PKGS=( libopencv2.4-java librxtx-java )
    declare -g JRI_PKGS=( jri-11-ev3 )
    declare -g JDEB_PKGS=( openjdk-11-jre-headless )

    # brickpi java repository
    JDEB_REPO_NAME="stretch-backports"
    JDEB_REPO="deb http://ftp.debian.org/debian stretch-backports main"
    JDEB_TMP_LINK="/usr/lib/jvm/java-11-openjdk-armhf/bin/java"

    # latest java versions
    declare -g -A JAVA_LATEST
    JAVA_LATEST[ev3]="11"
    JAVA_LATEST[brickpi]="11"
    JAVA_LATEST[brickpi3]="11"
    JAVA_LATEST[pistorms]="11"

    # platform detection
    BATT_EV3_STRETCH="/sys/class/power_supply/lego-ev3-battery"
    BATT_EV3_JESSIE="/sys/class/power_supply/legoev3-battery"
    BATT_BRICKPI="/sys/class/power_supply/brickpi-battery"
    BATT_BRICKPI3="/sys/class/power_supply/brickpi3-battery"
    BATT_PISTORMS="/sys/class/power_supply/pistorms-battery"
}

#############################################
# Detect current platform and set $PLATFORM
function detect_platform() {
    PLATFORM="unknown"

    #1. Detect platform
    if [ -d "$BATT_EV3_STRETCH" ]
    || [ -d "$BATT_EV3_JESSIE"  ]; then PLATFORM="ev3"
    elif [ -d "$BATT_BRICKPI"   ]; then PLATFORM="brickpi"
    elif [ -d "$BATT_BRICKPI3"  ]; then PLATFORM="brickpi3"
    elif [ -d "$BATT_PISTORMS"  ]; then PLATFORM="pistorms"
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
}

##########################################
# Print the help message for this script
function do_help() {
    echo "Installer options:"
    echo "sudo ./installer.sh java ... installs Java"
    echo "sudo ./installer.sh libs ... installs RXTX and OpenCV libraries"
}

###########################
# Install OpenCV and RXTX
function do_libs() {
    echo "Installing OpenCV and RXTX."
    apt-get update || return $?
    apt-get install --yes --no-install-recommends ${LIB_PKGS[*]} || return $?
}

###########################################
# Install Java by a platform specific way
function java_install() {
    if [ "$PLATFORM" == "ev3" ]; then
        java_install_jri
        return $?
    elif [ "$PLATFORM" == "brickpi"  ] ||
         [ "$PLATFORM" == "brickpi3" ] ||
         [ "$PLATFORM" == "pistorms" ]; then
        java_install_ppa
        return $?
    fi
}

#####################################
# Locate existing Java installation
function java_find() {
    if type -p java; then
        echo "Found java executable in PATH"
        JAVA_REAL_EXE="$(which java)"

    elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
        echo "Found java executable in JAVA_HOME"
        JAVA_REAL_EXE="$JAVA_HOME/bin/java"

    else
        echo "No java detected"
        JAVA_REAL_EXE="/bin/true"
    fi

    JAVA_VERSION_RAW="$("$JAVA_REAL_EXE" -version 2>&1)"
    JAVA_VERSION="$(echo "$JAVA_VERSION_RAW" | awk -F '"' '/version/ {print $2}')"
    JAVA_VERSION_LATEST="${JAVA_LATEST[$PLATFORM]}"

    echo "Installed Java version: '${JAVA_VERSION}', latest '${JAVA_VERSION_LATEST}', installing anyway."
    return 0
}

######################################
# Install the latest OpenJDK for EV3
function java_install_jri() {
    apt-get install --yes --no-install-recommends ${JRI_PKGS[*]} || return $?

    JAVA_REAL_EXE="$(which java)"
}

########################################
# Install the latest Debian armhf java
function java_install_ppa() {
    ###
    # Add backports repo to Stretch

    # remove workaround from Buster
    rm /etc/apt/preferences.d/jdk

    # workaround for cyclic dependency, dunno if still necessary
    ln -sf "$JDEB_TMP_LINK" "/usr/bin/java"

    # add repo, update
    echo "$JDEB_REPO" | tee "/etc/apt/sources.list.d/jdk.list"
    apt-get update  || return $?

    # install package (the symlink above gets discarded, but it is needed during the installation)
    apt-get install --yes --no-install-recommends -t "$JDEB_REPO_NAME" ${JDEB_PKGS[*]} || return $?

    JAVA_REAL_EXE="$(which java)"
}

######################
# Print Java version
function print_java() {
    echo
    echo "-> Java version:"
    "$JAVA_REAL_EXE" -version
}

# MAIN PROGRAM

print_info_header
set_configuration
detect_platform

if [ "$1" == "help" ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    do_help
    exit 0

elif [ "$1" == "java" ]; then
    java_find || exit $?
    java_install || exit $?
    print_java
    exit 0

elif [ "$1" == "libs" ]; then
    do_libs
    exit $?
fi

echo "No action specified. Try running help."

exit 1
