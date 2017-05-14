#!/bin/bash

CHARACTER="#"
SPACE=" "
TOTAL=40
function createLine() {
    local LINE=$CHARACTER
    for i in $(seq 1 $TOTAL);
    do
       LINE+=$CHARACTER
    done
    echo $LINE
}

function createHeader() {
    TITLE=$1
    TITLE_LEN=${#TITLE}
    createLine
    CENTRAL_LINE="$CHARACTER $TITLE"
    CURRENT=${#CENTRAL_LINE}
    PENDING=$(expr $TOTAL - $CURRENT)
    for i in $(seq 2 $PENDING);
    do
        CENTRAL_LINE+=$SPACE
    done
    echo "$CENTRAL_LINE #"
    createLine
}


#createHeader "PLATFORM SECTION"
#str="Some string"
#echo $str | awk '{print toupper($0)}'
#exit

# Utilities
INSTALLED="NO";
function isInstalled(){
    echo "Parameter #1 is $1"
    local result = dpkg-query -W -f='${Status}\n' $1 | head -n1 | awk '{print $3;}' | grep -q '^installed$'
    INSTALLED=$result;
}