#!/bin/bash

#####################################
# Install the latest EV3 JRI bundle
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
    update-alternatives --install /usr/bin/java java "$JRI_EXE" "$JRI_PRIORITY"

    JAVA_REAL_EXE="$JRI_EXE"
}


########################################
# Install the latest Debian armhf java
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

###########################################
# Install Java by a platform specific way
function java_just_install() {
    if [ "$PLATFORM" == "ev3" ]; then
        java_install_bundle
    elif [ "$PLATFORM" == "brickpi"  ] ||
         [ "$PLATFORM" == "brickpi3" ] ||
         [ "$PLATFORM" == "pistorms" ]; then
        java_install_ppa
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
}

############################################################
# Check if the right Java is installed, if not, install it
function java_install() {
    JAVA_VERSION_RAW="$("$JAVA_REAL_EXE" -version 2>&1)"
    JAVA_VERSION="$(echo "$JAVA_VERSION_RAW" | awk -F '"' '/version/ {print $2}')"
    JAVA_VERSION_LATEST="${JAVA_LATEST[$PLATFORM]}"

    echo "Installed Java version: '${JAVA_VERSION}'"

    if [ "$JAVA_VERSION" != "$JAVA_VERSION_LATEST" ]; then
        echo "Installing latest Java version ($JAVA_VERSION_LATEST)..."
        java_just_install
    else
        echo "Latest major Java version is installed."
    fi
}

#############################
# Perform maintenance tasks
function java_postinstall() {
    update-alternatives --set "/usr/bin/java" "$JAVA_REAL_EXE"

    echo "Output of 'java -version':"
    "$JAVA_REAL_EXE" -version

    echo "Dumping class cache..."
    "$JAVA_REAL_EXE" -Xshare:dump
}

java_find
java_install
java_postinstall
