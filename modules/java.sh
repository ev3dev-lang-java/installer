#!/bin/bash

function java_install_bundle(){
    local JAVA_PAK
    local JAVA_EXE

    if [ -e "$JRE_ORACLE_PATH" ]; then
        JAVA_PAK="$JRE_ORACLE_PATH"
        JAVA_EXE="$JRE_ORACLE_EXE"

    elif [ -e "$JRI_OPENJDK_PATH" ]; then
        JAVA_PAK="$JRI_OPENJDK_PATH"
        JAVA_EXE="$JRI_OPENJDK_EXE"

    elif [ -e "$JDK_OPENJDK_PATH" ]; then
        JAVA_PAK="$JDK_OPENJDK_PATH"
        JAVA_EXE="$JDK_OPENJDK_EXE"

    else
        echo "Sorry, the installer didn't detect any Java archive"
        echo "in /home/robot. Try to copy the file again."
        echo
        exit 1
    fi

    echo "Java package detected, installing..."
    tar -xf "$JAVA_PAK" -C /opt
    update-alternatives --install /usr/bin/java java "$JAVA_EXE" 1
    
    echo "Extraction complete. Java version:"
    java -version
    
    echo "Dumping class cache..."
    java -Xshare:dump
}

function java_install_ppa() {
    echo "$WEBUPD8_REPO" | sudo tee -a /etc/apt/sources.list
    apt-key adv --recv-key --keyserver keyserver.ubuntu.com "$WEBUPD8_KEY"
    apt-get update
    apt-get install oracle-java8-installer

    #Review in the future how to accept licence automatically
    #https://askubuntu.com/questions/190582/installing-java-automatically-with-silent-option
}

#1. Detect Java
#1.1 Install Java
#1.2 Create JAVA_HOME PENDING
if type -p java; then
    echo "Found java executable in PATH"
    java -version
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo "Found java executable in JAVA_HOME"
    "$JAVA_HOME/bin/java" -version
else
    echo "No java detected"

    if [ "$PLATFORM" == "$EV3" ]; then
        java_install_bundle
    elif [ "$PLATFORM" == "$BRICKPI"  ] ||
         [ "$PLATFORM" == "$BRICKPI3" ] ||
         [ "$PLATFORM" == "$PISTORMS" ]; then
        java_install_ppa
    fi

fi

