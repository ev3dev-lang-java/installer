#!/bin/bash

function installJava() {
    apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install oracle-java8-installer

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
    echo "found java executable in JAVA_HOME"
else
    echo "no java"

    if [ "$PLATFORM" == "$EV3" ]; then
        echo "You have to follow this documentation to install to continue using this installer"
        echo "https://github.com/ev3dev-lang-java/docs/blob/master/docs/GettingStartedBrick.md"
        exit 1

        #Manual installer of Java 8
        #wget https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules/java-ev3-java8-installer.sh
        #source modules/java-ev3-java8-installer.sh

    elif [ "$PLATFORM" == "$BRICKPI" ]; then
        installJava
    fi

fi

createHeader "END $MODULE"