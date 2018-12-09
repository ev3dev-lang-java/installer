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
    # jri
    JRI_URL="https://ci.adoptopenjdk.net/view/ev3dev/job/openjdk11_build_ev3_linux/lastSuccessfulBuild/artifact/build/jri-ev3.tar.gz"
    JRI_DIR="/opt/jri-11-ev3"
    JRI_PRIORITY=1111

    # packages
    LIB_PKGS="libopencv2.4-java librxtx-java"
    JRE_PKGS="openjdk-8-jre-headless"

    # brickpi java
    JRE_REPO_NAME="jessie-backports"
    JRE_REPO="deb http://ftp.debian.org/debian jessie-backports main"

    # java libraries
    JAVA_LIBRARY_DIR="/home/robot/java/libraries"
    JAVA_LIBRARY_LIST=""
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST https://jitpack.io/com/github/ev3dev-lang-java/ev3dev-lang-java/2.5.3/ev3dev-lang-java-2.5.3.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST https://jitpack.io/com/github/ev3dev-lang-java/lejos-commons/0.7.2/lejos-commons-0.7.2.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST http://central.maven.org/maven2/net/java/dev/jna/jna/4.5.2/jna-4.5.2.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST http://central.maven.org/maven2/ch/qos/logback/logback-classic/1.2.3/logback-classic-1.2.3.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST http://central.maven.org/maven2/ch/qos/logback/logback-core/1.2.3/logback-core-1.2.3.jar"
    JAVA_LIBRARY_LIST="$JAVA_LIBRARY_LIST http://central.maven.org/maven2/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar"

    # platform detection
    BATT_EV3_STRETCH="/sys/class/power_supply/lego-ev3-battery"
    BATT_EV3_JESSIE="/sys/class/power_supply/legoev3-battery"
    BATT_BRICKPI="/sys/class/power_supply/brickpi-battery"
    BATT_BRICKPI3="/sys/class/power_supply/brickpi3-battery"
    BATT_PISTORMS="/sys/class/power_supply/pistorms-battery"
}

#############################################
# Add line to log
function write_log() {
    echo "[$(date -R)] $1"
}

#############################################
# Detect current platform and set $PLATFORM
function detect_platform() {
    PLATFORM="unknown"

    # 1. Detect platform
    if [ -d "$BATT_EV3_STRETCH" ] || [ -d "$BATT_EV3_JESSIE"  ]; then PLATFORM="ev3";
    elif [ -d "$BATT_BRICKPI"   ]; then PLATFORM="brickpi";
    elif [ -d "$BATT_BRICKPI3"  ]; then PLATFORM="brickpi3";
    elif [ -d "$BATT_PISTORMS"  ]; then PLATFORM="pistorms";
    fi

    # override for tests
    if [ -n "$INSTALLER_OVERRIDE_PLATFORM" ]; then
        PLATFORM="$INSTALLER_OVERRIDE_PLATFORM"
    fi

    # print
    echo "Platform detected: $PLATFORM"
    echo

    if [ "$PLATFORM" = "unknown" ]; then
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
    echo "sudo ./installer.sh update ... update APT repositories"
    echo "sudo ./installer.sh java ... installs Java"
    echo "sudo ./installer.sh nativeLibs ... installs RXTX and OpenCV libraries"
    echo "sudo ./installer.sh javaLibs ... installs ev3dev-lang-java libraries"
}

###########################
# Install OpenCV and RXTX
function do_native() {
    write_log "installing native libs"
    echo "Installing OpenCV and RXTX."
    apt-get install --yes --no-install-recommends $LIB_PKGS  || return $?
}

###########################################
# Install Java by a platform specific way
function java_install() {
    if [ "$PLATFORM" = "ev3" ]; then
        java_install_jri
        return $?
    elif [ "$PLATFORM" = "brickpi"  ] ||
         [ "$PLATFORM" = "brickpi3" ] ||
         [ "$PLATFORM" = "pistorms" ]; then
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

    elif [ -n "$JAVA_HOME" ] && [ -x "$JAVA_HOME/bin/java" ];  then
        echo "Found java executable in JAVA_HOME"
        JAVA_REAL_EXE="$JAVA_HOME/bin/java"

    else
        echo "No java detected"
        JAVA_REAL_EXE="/bin/true"
    fi

    JAVA_VERSION_RAW="$("$JAVA_REAL_EXE" -version 2>&1)"
    JAVA_VERSION="$(echo "$JAVA_VERSION_RAW" | awk -F '"' '/version/ {print $2}')"

    echo "Installed Java version: '${JAVA_VERSION}', installing anyway."
    write_log "old java ver: $JAVA_VERSION"
    return 0
}

######################################
# Install the latest OpenJDK for EV3
function java_install_jri() {
    write_log "installing jri manually from jenkins"

    for i in "$(ls "$JRI_DIR/bin")"; do
        update-alternatives --remove "$i" "$JRI_DIR/bin/$i" || true
    done
    rm -rf "$JRI_DIR" || true

    wget -nv "$JRI_URL" -O /tmp/jri.tar.gz  || return $?
    tar -C /tmp -xf /tmp/jri.tar.gz
    mv /tmp/jri "$JRI_DIR"

    write_log "setting alternatives"
    for i in $(ls "$JRI_DIR/bin"); do
        update-alternatives --install "/usr/bin/$i" "$i" "$JRI_DIR/bin/$i" "$JRI_PRIORITY"
    done

    JAVA_REAL_EXE="$(which java)"
    CLASSLIST="$JRI_CLASSLIST"

    write_log "dumping java cds"
    "$JAVA_REAL_EXE" -Xshare:dump
    return $?
}

########################################
# Install the latest Debian armhf java
function java_install_ppa() {
    write_log "installing jre from debian repo"

    ###
    # Add backports repo to Jessie

    # remove workaround from Buster
    rm -f /etc/apt/preferences.d/jdk

    # add repo, update
    echo "$JRE_REPO" | tee "/etc/apt/sources.list.d/jdk.list"
    apt-get update  || return $?

    # workaround some weird bug
    mkdir -p /usr/lib/jvm/java-8-openjdk-armhf/jre/lib/arm/
    ln -s client /usr/lib/jvm/java-8-openjdk-armhf/jre/lib/arm/server

    # install package
    apt-get install --yes --no-install-recommends -t "$JRE_REPO_NAME" $JRE_PKGS  || return $?

    JAVA_REAL_EXE="$(which java)"
}

##########################
# Download ELJ libraries
function do_java_download() {
    write_log "installing java libs"

    echo "Downloading Java libraries..."
    rm -rf "$JAVA_LIBRARY_DIR"
    mkdir -p "$JAVA_LIBRARY_DIR"
    wget -nv -N -P "$JAVA_LIBRARY_DIR" $JAVA_LIBRARY_LIST
    return $?
}

function do_fixup_perms() {
    echo "Fixing permissions on /home/robot..."
    chown robot:robot -R /home/robot
    return $?
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

if [ "$1" = "help" ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    do_help
    exit 0

elif [ "$1" = "update" ]; then
    write_log "apt update"
    apt-get update
    exit $?

elif [ "$1" = "java" ]; then
    java_find || exit $?
    java_install || exit $?
    print_java
    exit 0

elif [ "$1" = "nativeLibs" ]; then
    do_native
    exit $?

elif [ "$1" = "javaLibs" ]; then
    do_java_download || exit $?
    do_fixup_perms
    exit $?

fi

echo "No action specified. Try running help."

exit 1
