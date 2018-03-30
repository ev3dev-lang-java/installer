#!/bin/bash

function installJavaForEV3(){
    wget https://github.com/ev3dev-lang-java/openjdk-ev3/releases/download/v0.4.5/jri10-ev3.tar.gz
    tar -zxvf "/home/robot/installer/jri10-ev3.tar.gz" -C /opt
    update-alternatives --install /usr/bin/java java /opt/jri10-ev3/bin/java 1
    java -version
}

#TODO Upgrade this function with the support of OpenJDK 10
function installJavaForBrickPi() {
    apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install --yes --no-install-recommends oracle-java8-installer

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
else
    echo "No java detected"

    if [ "$PLATFORM" == "$EV3" ]; then
        installJavaForEV3
    elif [ "$PLATFORM" == "$BRICKPI" ]; then
        installJavaForBrickPi
    elif [ "$PLATFORM" == "$BRICKPI3" ]; then
        installJavaForBrickPi
    elif [ "$PLATFORM" == "$PISTORMS" ]; then
        installJavaForBrickPi
    fi

fi
