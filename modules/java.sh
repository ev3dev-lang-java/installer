#!/bin/bash

function installJavaForEV3(){
    if [ -e "/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz" ]; then
        tar -zxvf "/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz" -C /opt
        update-alternatives --install /usr/bin/java java /opt/ejdk1.8.0/linux_arm_sflt/jre/bin/java 1
        java -version
    else
        echo "Sorry, the installer didn´t detect ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz"
        echo "on /home/robot"
        echo "try to copy the file again to the EV3 Brick."
        echo
        exit 1
    fi
}

function installJavaForBrickPi() {
    apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install oracle-java8-installer -y

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

