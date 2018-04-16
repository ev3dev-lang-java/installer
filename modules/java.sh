#!/bin/bash


function java_install_bundle(){
    if [ -d "$JAVA_PATH_NEW" ]; then
        echo "Sorry, we detected a previous installation in path: /opt/jri-10-build-050"
        echo
        exit 1
    fi
    
    if [ ! -f "$JAVA_ZIP" ]; then
        echo "Downloading new Java..."
        wget "$JAVA_URL" -O "$JAVA_ZIP"
    else
        echo "Java archive found, using cached."
    fi

    # extract it, rename it and point the symlink to it
    echo "Java package acquired, installing..."
    tar -xf "$JAVA_ZIP" -C "$JAVA_OPT"
    mv "$JAVA_PATH_ZIP" "$JAVA_PATH_NEW"
    update-alternatives --install /usr/bin/java java "$JAVA_EXE" 1
    
    JAVA_REAL_EXE="$JAVA_EXE"
}

#TODO Upgrade this function with the support of OpenJDK 10
function java_install_ppa() {
    echo "$WEBUPD8_REPO" | sudo tee -a /etc/apt/sources.list
    apt-key adv --recv-key --keyserver keyserver.ubuntu.com "$WEBUPD8_KEY"
    apt-get update
    apt-get install --yes --no-install-recommends "$WEBUPD8_PKG"

    JAVA_REAL_EXE="$(which java)"

    #Review in the future how to accept licence automatically
    #https://askubuntu.com/questions/190582/installing-java-automatically-with-silent-option
}

#1. Detect Java
#1.1 Install Java
#1.2 Create JAVA_HOME PENDING

if type -p java; then
    echo "Found java executable in PATH"
    JAVA_REAL_EXE="$(which java)"

elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo "Found java executable in JAVA_HOME"
    JAVA_REAL_EXE="$JAVA_HOME/bin/java"

else
    echo "No java detected"

    if [ "$PLATFORM" == "ev3" ]; then
        java_install_bundle
    elif [ "$PLATFORM" == "brickpi"  ] ||
         [ "$PLATFORM" == "brickpi3" ] ||
         [ "$PLATFORM" == "pistorms" ]; then
        java_install_ppa
    fi
fi

echo "Installation complete. Java version:"
"$JAVA_REAL_EXE" -version

echo "Dumping class cache..."
"$JAVA_REAL_EXE" -Xshare:dump
