#!/bin/bash


function java_install_bundle() {
    if [ -d "$JRI_PATH_NEW" ]; then
        echo "Sorry, we detected a previous installation in path: /opt/jri-10-build-050"
        echo
        exit 1
    fi

    if [ ! -f "$JRI_ZIP" ]; then
        echo "Downloading new Java..."
        wget "$JRI_URL" -O "$JRI_ZIP"
    else
        echo "Java archive found, using cached."
    fi

    # extract it, rename it and point the symlink to it
    echo "Java package acquired, installing..."
    tar -xf "$JRI_ZIP" -C "$JRI_OPT"
    mv "$JRI_PATH_ZIP" "$JRI_PATH_NEW"
    update-alternatives --install /usr/bin/java java "$JRI_EXE" 10

    JAVA_REAL_EXE="$JRI_EXE"
}

function java_install_ppa() {
    ###
    # Add Debian Buster repo to Stretch

    # prevent distro upgrade
    cat >/etc/apt/preferences.d/jdk <<EOF
Package: *
Pin: release a=stable
Pin-Priority: 200

Package: *
Pin: release a=testing
Pin-Priority: 100
EOF
    # workaround for cyclic dependency
    ln -sf "$JDEB_TMP_LINK" "/usr/bin/java"

    # add repo, update
    echo "$JDEB_REPO" | sudo tee "/etc/apt/sources.list.d/jdk.list"
    apt-get update

    # install package
    #  (the symlink above gets discarded, but
    #   it is needed during the installation)
    apt-get install --yes --no-install-recommends "$JDEB_PKG"

    JAVA_REAL_EXE="$(which java)"
}

#1. Detect Java
#1.1 Install Java
#1.2 Create JAVA_HOME PENDING

if type -p java; then
    echo "Found java executable in PATH"
    JAVA_REAL_EXE="$(which java)"

    if [ ! -d "$JRI_OPT/jri-10-build-050" ]; then
        echo "But we will upgrade the Java version"
        echo $JRI_OPT/jri-10-build-050
        echo
        if [ "$PLATFORM" == "ev3" ]; then
            java_install_bundle
        elif [ "$PLATFORM" == "brickpi"  ] ||
             [ "$PLATFORM" == "brickpi3" ] ||
             [ "$PLATFORM" == "pistorms" ]; then
            java_install_ppa
        fi
    else
      echo "Latest Java installed."
      echo $JRI_OPT/jri-10-build-050
    fi

elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo "Found java executable in JAVA_HOME"
    JAVA_REAL_EXE="$JAVA_HOME/bin/java"

    echo $JRI_OPT/jri-10-build-050
    if [ ! -d "$JRI_OPT/jri-10-build-050" ]; then
        echo "But upgrading Java version"
        echo
    fi

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
