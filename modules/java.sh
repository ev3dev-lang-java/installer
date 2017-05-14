#!/bin/bash

echo ""
echo "##############################"
echo "# JAVA SECTION               #"
echo "##############################"
echo ""

#1. Detect Java
#1.1 Install Java PENDING
#1.2 Create JAVA_HOME PENDING
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME
    _java="$JAVA_HOME/bin/java"
else
    echo "no java"

    #Manual installer of Java 8
    wget https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/modules/java-ev3-java8-installer.sh
    #source modules/java-ev3-java8-installer.sh
fi

echo ""
echo "##############################"
echo "# END JAVA SECTION           #"
echo "##############################"
echo ""